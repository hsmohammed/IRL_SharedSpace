# 
# Traj_Obj_112x_clipped3 <- Traj_Obj_112x_clipped3 %>% 
#   mutate(xgrid = discretize(X_axis2_SGF,method = "fixed" ,breaks = breaksX,labels = seq(1:(length(breaksX)-1)))) %>% 
#   mutate(ygrid = discretize(Y_axis2_SGF,method = "fixed" ,breaks = breaksY,labels = seq(1:(length(breaksY)-1)))) %>% 
#   mutate(speedGrid = discretize(speed_SGF,method = "fixed" ,breaks = breaksSpeed,labels = seq(1:(length(breaksSpeed)-1)))) %>% 
#   mutate(yawGrid = discretize(yawAngle_axis2,method = "fixed" ,breaks = breaksYaw,labels = seq(1:(length(breaksYaw)-1)))) %>% 
#   mutate(accGrid = discretize(acc_SGF,method = "fixed" ,breaks = breaksAcc,labels = seq(1:(length(breaksAcc)-1))))
# 
# 
# Traj_FBF <- Traj_Obj_112x_clipped3 %>% 
#   dplyr::group_by(Obj_ID) %>% 
#   dplyr::arrange(F, type)
# 
# Traj_FBF_count <- Traj_FBF %>% 
#   group_by(F) %>% 
#   summarise(count = n())
# 
# 
# p1 <- tables_XY %>% 
#   ggplot(aes(X,Y, col = code, group = code))+
#   annotation_custom(rasterGrob(ima_212, width = unit(1,"npc"), 
#                                height = unit(1,"npc")), 
#                     0, 100, 0, 67)+
#   geom_path(na.rm = TRUE, size = 1) +
#   scale_x_continuous(limits = c(0,67), expand = c(0,0))+
#   scale_y_continuous(limits = c(0,100), expand = c(0,0))
# ggsave(filename = "Map/tables_XY.jpg",p1)

# BrooklynData <- read.csv("BrooklynData.csv")
# 
# BrooklynData <- as.tibble(BrooklynData)
# 
# BrooklynData <- BrooklynData %>% group_by(Obj_ID)
# 
# BrooklynData_count <- BrooklynData %>% summarise(count = n())
# 
# BrooklynData_count_test <- BrooklynData_count[300:624,]
# 
# BrooklynData_test <- BrooklynData %>% filter(Obj_ID %in% BrooklynData_count_test$Obj_ID)
# 
# BrooklynData <- BrooklynData %>% filter(!(Obj_ID %in% BrooklynData_count_test$Obj_ID))
# 
# 
# BrooklynData %>% 
#   ggplot(aes(x = acc_SGF))+
#   geom_histogram()

states_Brooklyn <- BrooklynData %>% 
  select(Obj_ID,F, speed_SGF, Long_distance, Lateral_distance, Speed_diff, pathDeviation)


actions_Brooklyn <- BrooklynData %>% 
  select(Obj_ID,F, acc_SGF, yawAngle_SGF)

library(arules)



a <- discretize(states_Brooklyn$speed_SGF, method = "frequency", breaks = 5)
write.csv(levels(a),"speed_SGF_Ranges.csv")
levels(a) <- c(1:5)


states_Brooklyn <- states_Brooklyn %>% ungroup() %>% 
  dplyr::mutate(speed_SGF_disc = a)




a <- discretize(states_Brooklyn$Long_distance, method = "frequency", breaks = 5)

write.csv(levels(a),"Long_distance_Ranges.csv")

levels(a) <- c(1:5)

states_Brooklyn <- states_Brooklyn %>% ungroup() %>% 
  dplyr::mutate(Long_distance_disc = a)


a <- discretize(states_Brooklyn$Lateral_distance, method = "frequency", breaks = 5)

write.csv(levels(a),"Lateral_distance_Ranges.csv")

levels(a) <- c(1:5)

states_Brooklyn <- states_Brooklyn %>% ungroup() %>% 
  dplyr::mutate(Lateral_distance_disc = a)


a <- discretize(states_Brooklyn$Speed_diff, method = "frequency", breaks = 5)

write.csv(levels(a),"speed_difference_Ranges.csv")

levels(a) <- c(1:5)

states_Brooklyn <- states_Brooklyn %>% ungroup() %>% 
  dplyr::mutate(Speed_diff_disc = a)


a <- discretize(states_Brooklyn$pathDeviation, method = "frequency", breaks = 5)

write.csv(levels(a),"pathDeviation_Ranges.csv")

levels(a) <- c(1:5)

states_Brooklyn <- states_Brooklyn %>% ungroup() %>% 
  dplyr::mutate(pathDeviation_disc = a)


a <- discretize(actions_Brooklyn$acc_SGF, method = "frequency", breaks = 5)

write.csv(levels(a),"acc_SGF_Ranges.csv")

levels(a) <- c(1:5)

actions_Brooklyn <- actions_Brooklyn %>% ungroup() %>% 
  dplyr::mutate(acc_SGF_disc = a)



a <- discretize(actions_Brooklyn$yawAngle_SGF, method = "frequency", breaks = 5)

write.csv(levels(a),"yawAngle_SGF_Ranges.csv")

levels(a) <- c(1:5)

actions_Brooklyn <- actions_Brooklyn %>% ungroup() %>% 
  dplyr::mutate(yawAngle_SGF_disc = a)


states_Brooklyn <- states_Brooklyn %>% 
  dplyr::arrange(speed_SGF_disc, Long_distance_disc,Lateral_distance_disc, Speed_diff_disc, pathDeviation_disc)



states_Brooklyn <- states_Brooklyn %>% 
  dplyr::mutate(state_no = (as.numeric(speed_SGF_disc)-1)*625+(as.numeric(Long_distance_disc)-1)*125+
                  (as.numeric(Lateral_distance_disc)-1)*25+(as.numeric(Speed_diff_disc)-1)*5+
                  as.numeric(pathDeviation_disc))



actions_Brooklyn <- actions_Brooklyn %>% 
  dplyr::arrange(acc_SGF_disc, yawAngle_SGF_disc)




actions_Brooklyn <- actions_Brooklyn %>% 
  dplyr::mutate(action_no = (as.numeric(acc_SGF_disc)-1)*5+
                  as.numeric(yawAngle_SGF_disc))

states_Brooklyn <- states_Brooklyn %>% 
  arrange(Obj_ID, F)


actions_Brooklyn <- actions_Brooklyn %>% 
  arrange(Obj_ID, F)


state_action <- data.frame(Obj_ID = states_Brooklyn$Obj_ID, F = states_Brooklyn$F,state_no = states_Brooklyn$state_no, action_no = actions_Brooklyn$action_no)


state_action <- state_action %>% 
  group_by(Obj_ID) %>% 
  mutate(state_no_new = lead(state_no,default = NA))

state_action <- state_action[complete.cases(state_action),]

length(state_action$Obj_ID)

# Transition probabilities



trans_prob <- array(rep(0, 244140625), dim = c(3125,25,3125))

trans_s <- array(rep(0, 244140625), dim = c(3125,25,3125))



state_action <- state_action %>% 
  mutate(state_action = paste(state_no, action_no, sep = '_'))

state_action2 <- state_action %>% 
  ungroup() %>% 
  dplyr::select(state_action, state_no_new)

state_action2 <- state_action2 %>% dplyr::arrange(state_action, state_no_new)

state_action2 <- state_action2 %>% 
  dplyr::group_by(state_action) %>% 
  dplyr::mutate(trans_count = n())

state_action3 <- state_action2 %>% 
  dplyr::mutate(state_action_state = paste(state_action, state_no_new, sep = '_'))

state_action3 <- state_action3 %>% 
  dplyr::group_by(state_action_state) %>% 
  dplyr::mutate(new_state_count = n())

state_action4 <- unique(state_action3)

state_action3 <- state_action3 %>% 
  dplyr::mutate(trans_prob = new_state_count/trans_count)

state_action <- state_action %>%
  dplyr::ungroup() %>% 
  dplyr::mutate(state_action = paste(state_no, action_no, sep = '_')) %>% 
  dplyr::arrange(state_action, state_no_new) %>% 
  dplyr::mutate(trans_prob = state_action3$trans_prob)

state_action6 <- state_action %>% 
  dplyr::group_by(state_no) %>% 
  dplyr::arrange(state_no)

state_action6_count <- state_action6 %>% 
  dplyr::summarise(count = n())


for (i in 1:13405) {
  
  trans_prob[state_action$state_no[i],state_action$action_no[i],state_action$state_no_new[i]] = state_action$trans_prob[i]
}


for (i in 1:13405) {
  
  trans_s[state_action$state_no[i],state_action$action_no[i],state_action$state_no_new[i]] = state_action$state_no_new[i]
}

filename <- paste(tempfile(), ".mat", sep="")

writeMat(filename, trans_prob = trans_prob)


tryCatch({
  # Named
  writeMat(filename, trans_prob = trans_prob)
  # Not named
  writeMat(filename, trans_prob = trans_prob)
}, error = function(ex) {
  cat("ERROR:", ex$message, "\n")
})



mm<-matrix(list(x = list(a = 5,b = 6), y = 6,z = "tt", r = "aa"), 2, 2)

# feature matrix

features_splittable <- matrix(rep(0,78125),nrow = 3125,ncol = 25)


for (i in 1:3125) {
  
  i1 <- (i-1)%%625
  i2 <- i1%%125
  i3 <- i2%%25
  i4 <- i3%%5
  
  j1 <- (i-1)%/%625
  j2 <- i1%/%125
  j3 <- i2%/%25
  j4 <- i3%/%5
  j5 <- i4
  
  features_splittable[i, j1+1] = 1
  features_splittable[i, j2+6] = 1
  features_splittable[i, j3+11] = 1
  features_splittable[i, j4+16] = 1
  features_splittable[i, j5+21] = 1
  
  
}

# Create example samples file


state_action_2mat <- state_action %>% dplyr::group_by(Obj_ID)

state_action_count <- state_action_2mat %>% dplyr::summarise(count = n())

state_mat <- matrix(nrow = 1275,ncol = 288) 
action_mat <- matrix(nrow = 1275,ncol = 288) 

for (i in 1:1275) {
  for (j in 1:state_action_count$count[i]) {
    
    state_mat[i,j] <- state_action_2mat$state_no[state_action_2mat$Obj_ID == state_action_count$Obj_ID[i]][j]
    action_mat[i,j] <- state_action_2mat$action_no[state_action_2mat$Obj_ID == state_action_count$Obj_ID[i]][j]
    
  }
  
}

writeMat("D:/IRL Paper/AnalysisR/IRL/state_mat.mat", state_mat = state_mat)

writeMat("D:/IRL Paper/AnalysisR/IRL/action_mat.mat", action_mat = action_mat)

writeMat("D:/IRL Paper/AnalysisR/IRL/features_splittable.mat", features_splittable = features_splittable)


writeMat("D:/IRL Paper/AnalysisR/IRL/trans_prob.mat", trans_prob = trans_prob)

writeMat("D:/IRL Paper/AnalysisR/IRL/trans_s.mat", trans_s = trans_s)

state_action_test <- state_action %>% dplyr::filter(Obj_ID %in% BrooklynData_count_test$Obj_ID)

# AN

Policy <- read.csv("Policy.csv")

state_action_test <- state_action_test %>% 
  dplyr::mutate(action_predicted = Policy[state_no,]$action)

state_action_test <- state_action_test %>% 
  mutate(matching = action_no == action_predicted)

sum(state_action_test$matching)

state_action_test_AN_Matching <- state_action_test[state_action_test$matching == T,]
state_action_test_AN_NoMatching <- state_action_test[state_action_test$matching == F,]

state_action_test_AN_NoMatching <- state_action_test_AN_NoMatching[1:1853,]

state_action_test_AN_all <- full_join(state_action_test_AN_Matching, state_action_test_AN_NoMatching)

action_lookup <- actions_Brooklyn %>% 
  select(acc_SGF_disc,yawAngle_SGF_disc, action_no)
action_lookup <- unique(action_lookup)

state_action_test_AN_all <- state_action_test_AN_all %>% 
  dplyr::mutate(acc_bin_observed = 1) %>% 
  dplyr::mutate(yaw_bin_observed = 1) %>% 
  dplyr::mutate(acc_bin_predicted = 1) %>% 
  dplyr::mutate(yaw_bin_predicted = 1)

for (i in 1:length(state_action_test_AN_all$action_no)) {
  
  action_no_observed <- state_action_test_AN_all$action_no[i]
  action_no_predicted <- state_action_test_AN_all$action_predicted[i]
  
  acc_observed <- action_lookup[action_lookup$action_no == action_no_observed,]$acc_SGF_disc
  acc_predicted <- action_lookup[action_lookup$action_no == action_no_predicted,]$acc_SGF_disc
  
  yaw_observed <- action_lookup[action_lookup$action_no == action_no_observed,]$yawAngle_SGF_disc
  yaw_predicted <- action_lookup[action_lookup$action_no == action_no_predicted,]$yawAngle_SGF_disc
  
  state_action_test_AN_all$acc_bin_observed[i] <- acc_observed
  state_action_test_AN_all$acc_bin_predicted[i] <- acc_predicted
  state_action_test_AN_all$yaw_bin_observed[i] <- yaw_observed
  state_action_test_AN_all$yaw_bin_predicted[i] <- yaw_predicted
  
}


state_action_test_AN_all <- state_action_test_AN_all %>% 
  dplyr::mutate(acc_matching = (acc_bin_observed == acc_bin_predicted),
                yaw_matching = (yaw_bin_observed == yaw_bin_predicted))

sum(state_action_test_AN_all$acc_matching)

sum(state_action_test_AN_all$yaw_matching)

sum(state_action_test_AN_all$matching)


state_action_test_AN_all <- state_action_test_AN_all %>% 
  dplyr::mutate(acc_diff = abs(acc_bin_observed -acc_bin_predicted),
                yaw_diff = abs(yaw_bin_observed - yaw_bin_predicted))

count(state_action_test_AN_all[state_action_test_AN_all$acc_diff == 1,])

count(state_action_test_AN_all[state_action_test_AN_all$yaw_diff == 1,])


# Maxent

Policy_maxent <- read.csv("Policy_maxent.csv")

state_action_test <- state_action_test %>% 
  dplyr::mutate(action_predicted = Policy_maxent[state_no,]$action)

state_action_test <- state_action_test %>% 
  mutate(matching = action_no == action_predicted)

sum(state_action_test$matching)

state_action_test_ME_Matching <- state_action_test[state_action_test$matching == T,]
state_action_test_ME_NoMatching <- state_action_test[state_action_test$matching == F,]

state_action_test_ME_NoMatching <- state_action_test_ME_NoMatching[1:1260,]


state_action_test_ME_all <- full_join(state_action_test_ME_Matching, state_action_test_ME_NoMatching)


state_action_test_ME_all <- state_action_test_ME_all %>% 
  dplyr::mutate(acc_bin_observed = 1) %>% 
  dplyr::mutate(yaw_bin_observed = 1) %>% 
  dplyr::mutate(acc_bin_predicted = 1) %>% 
  dplyr::mutate(yaw_bin_predicted = 1)

for (i in 1:length(state_action_test_ME_all$action_no)) {
  
  action_no_observed <- state_action_test_ME_all$action_no[i]
  action_no_predicted <- state_action_test_ME_all$action_predicted[i]
  
  acc_observed <- action_lookup[action_lookup$action_no == action_no_observed,]$acc_SGF_disc
  acc_predicted <- action_lookup[action_lookup$action_no == action_no_predicted,]$acc_SGF_disc
  
  yaw_observed <- action_lookup[action_lookup$action_no == action_no_observed,]$yawAngle_SGF_disc
  yaw_predicted <- action_lookup[action_lookup$action_no == action_no_predicted,]$yawAngle_SGF_disc
  
  state_action_test_ME_all$acc_bin_observed[i] <- acc_observed
  state_action_test_ME_all$acc_bin_predicted[i] <- acc_predicted
  state_action_test_ME_all$yaw_bin_observed[i] <- yaw_observed
  state_action_test_ME_all$yaw_bin_predicted[i] <- yaw_predicted
  
}


state_action_test_ME_all <- state_action_test_ME_all %>% 
  dplyr::mutate(acc_matching = (acc_bin_observed == acc_bin_predicted),
                yaw_matching = (yaw_bin_observed == yaw_bin_predicted))

sum(state_action_test_ME_all$acc_matching)

sum(state_action_test_ME_all$yaw_matching)

sum(state_action_test_ME_all$matching)



state_action_test_ME_all <- state_action_test_ME_all %>% 
  dplyr::mutate(acc_diff = abs(acc_bin_observed -acc_bin_predicted),
                yaw_diff = abs(yaw_bin_observed - yaw_bin_predicted))

count(state_action_test_ME_all[state_action_test_ME_all$acc_diff == 1,])

count(state_action_test_ME_all[state_action_test_ME_all$yaw_diff == 1,])


# Trajectory Matching 



state_action_test_AN_all_count <- state_action_test_AN_all %>% 
  dplyr::group_by(Obj_ID) %>% 
  dplyr::summarise(count = n())


state_action_test_ME_all_count <- state_action_test_ME_all %>% 
  dplyr::group_by(Obj_ID) %>% 
  dplyr::summarise(count = n())

trai_match_21211_42_AN <- state_action_test_AN_all %>% 
  dplyr::filter(Obj_ID == "21114_92") %>% 
  dplyr::arrange(F) %>% 
  dplyr::mutate(predicted_state = 1,
                predicted_action2 = 1)

trai_match_21211_42_AN$predicted_state[1] <- trai_match_21211_42_AN$state_no[1]
trai_match_21211_42_AN$predicted_action2[1] <- trai_match_21211_42_AN$action_predicted[1]

trai_match_21211_42_ME <- state_action_test_ME_all %>% 
  dplyr::filter(Obj_ID == "21114_92") %>% 
  dplyr::arrange(F) %>% 
  dplyr::mutate(predicted_state = 1,
                predicted_action2 = 1)

trai_match_21211_42_ME$predicted_state[1] <- trai_match_21211_42_ME$state_no[1]
trai_match_21211_42_ME$predicted_action2[1] <- trai_match_21211_42_ME$action_predicted[1]


for (i in 2:length(trai_match_21211_42_AN$state_no)) {
  
  a <- which(trans_prob[trai_match_21211_42_AN$predicted_state[i-1],trai_match_21211_42_AN$predicted_action2[i-1],] == max(trans_prob[trai_match_21211_42_AN$predicted_state[i-1],trai_match_21211_42_AN$predicted_action2[i-1],]))
  
  if (length(a) == 1) {
    trai_match_21211_42_AN$predicted_state[i] <-  trai_match_21211_42_AN$predicted_state[i-1] + 1
    
    trai_match_21211_42_AN$predicted_action2[i] <- Policy[Policy$state == trai_match_21211_42_AN$predicted_state[i],]$action
  } else {
    trai_match_21211_42_AN$predicted_state[i] <- a
    trai_match_21211_42_AN$predicted_action2[i] <- Policy[Policy$state == trai_match_21211_42_AN$predicted_state[i],]$action
  }
  
  
}

View(trai_match_21211_42_AN)

# 
# library(plyr)
# state_action2 <- ddply(state_action,.(state_no,action_no),nrow)
# 
# state_action2 <- state_action2 %>% 
#   dplyr::mutate(state_no_new = state_action$state_no_new)
# 
# 
# state_action2 <- state_action2 %>% 
#   dplyr::mutate(T = 1/V1)
# 
# state_action_unique <- unique(state_action2,)
# 

