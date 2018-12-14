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



##Add detailed component ID to the data

Traj_Obj_112x_bicyclesAndPed_1 <- Traj_Obj_112x_bicyclesAndPed %>%
  mutate(Obj_ID = paste("112x", Obj_ID,sep = "_"))

Traj_Obj_121x_bicyclesAndPed_1 <- Traj_Obj_121x_bicyclesAndPed %>%
  mutate(Obj_ID = paste("121x", Obj_ID,sep = "_"))

Traj_Obj_122x_bicyclesAndPed_1 <- Traj_Obj_122x_bicyclesAndPed %>%
  mutate(Obj_ID = paste("122x", Obj_ID,sep = "_"))

Traj_Obj_142x_bicyclesAndPed_1 <- Traj_Obj_142x_bicyclesAndPed %>%
  mutate(Obj_ID = paste("142x", Obj_ID,sep = "_"))

Traj_Obj_152x_bicyclesAndPed_1 <- Traj_Obj_152x_bicyclesAndPed %>%
  mutate(Obj_ID = paste("152x", Obj_ID,sep = "_"))

Traj_Obj_161x_bicyclesAndPed_1 <- Traj_Obj_161x_bicyclesAndPed %>%
  mutate(Obj_ID = paste("161x", Obj_ID,sep = "_"))

Traj_Obj_162x_bicyclesAndPed_1 <- Traj_Obj_162x_bicyclesAndPed %>%
  mutate(Obj_ID = paste("162x", Obj_ID,sep = "_"))

Traj_Obj_171x_bicyclesAndPed_1 <- Traj_Obj_171x_bicyclesAndPed %>%
  mutate(Obj_ID = paste("171x", Obj_ID,sep = "_"))

Traj_Obj_172x_bicyclesAndPed_1 <- Traj_Obj_172x_bicyclesAndPed %>%
  mutate(Obj_ID = paste("172x", Obj_ID,sep = "_"))

Traj_Obj_182x_bicyclesAndPed_1 <- Traj_Obj_182x_bicyclesAndPed %>%
  mutate(Obj_ID = paste("182x", Obj_ID,sep = "_"))

Traj_Obj_191x_bicyclesAndPed_1 <- Traj_Obj_191x_bicyclesAndPed %>%
  mutate(Obj_ID = paste("191x", Obj_ID,sep = "_"))

Traj_Obj_192x_bicyclesAndPed_1 <- Traj_Obj_192x_bicyclesAndPed %>%
  mutate(Obj_ID = paste("192x", Obj_ID,sep = "_"))


# Join full data

Traj_Obj_all_bicyclesAndPed <- full_join(Traj_Obj_112x_bicyclesAndPed_1,Traj_Obj_121x_bicyclesAndPed_1)
Traj_Obj_all_bicyclesAndPed <- full_join(Traj_Obj_all_bicyclesAndPed,Traj_Obj_122x_bicyclesAndPed_1)
Traj_Obj_all_bicyclesAndPed <- full_join(Traj_Obj_all_bicyclesAndPed,Traj_Obj_142x_bicyclesAndPed_1)
Traj_Obj_all_bicyclesAndPed <- full_join(Traj_Obj_all_bicyclesAndPed,Traj_Obj_152x_bicyclesAndPed_1)
Traj_Obj_all_bicyclesAndPed <- full_join(Traj_Obj_all_bicyclesAndPed,Traj_Obj_161x_bicyclesAndPed_1)
Traj_Obj_all_bicyclesAndPed <- full_join(Traj_Obj_all_bicyclesAndPed,Traj_Obj_162x_bicyclesAndPed_1)
Traj_Obj_all_bicyclesAndPed <- full_join(Traj_Obj_all_bicyclesAndPed,Traj_Obj_171x_bicyclesAndPed_1)
Traj_Obj_all_bicyclesAndPed <- full_join(Traj_Obj_all_bicyclesAndPed,Traj_Obj_172x_bicyclesAndPed_1)
Traj_Obj_all_bicyclesAndPed <- full_join(Traj_Obj_all_bicyclesAndPed,Traj_Obj_182x_bicyclesAndPed_1)
Traj_Obj_all_bicyclesAndPed <- full_join(Traj_Obj_all_bicyclesAndPed,Traj_Obj_191x_bicyclesAndPed_1)
Traj_Obj_all_bicyclesAndPed <- full_join(Traj_Obj_all_bicyclesAndPed,Traj_Obj_191x_bicyclesAndPed_1)




Traj_Obj_112x_bicycles <- Traj_Obj_all_bicyclesAndPed %>% dplyr::filter(type == "b")

bicycles_112x_variables <- Traj_Obj_112x_bicycles %>% 
  dplyr::select(F, Obj_ID, dist1_mod, dist2_mod, YawDiff1_mod, YawDiff2_mod, speed_SGF, yawAngle_axis2, acc_SGF)

states_112x <- bicycles_112x_variables %>% 
  select(Obj_ID,F, dist1_mod, dist2_mod, YawDiff1_mod, YawDiff2_mod, speed_SGF)


actions_112x <- bicycles_112x_variables %>% 
  select(Obj_ID,F, yawAngle_axis2, acc_SGF)

library(arules)



a <- discretize(states_112x$dist1_mod, method = "interval", breaks = 5)
write.csv(levels(a),"dist1_Ranges.csv")
levels(a) <- c(1:5)


states_112x <- states_112x %>% ungroup() %>% 
  dplyr::mutate(dist1_disc = a)



a <- discretize(states_112x$dist2_mod, method = "interval", breaks = 5)
write.csv(levels(a),"dist2_Ranges.csv")
levels(a) <- c(1:5)


states_112x <- states_112x %>% ungroup() %>% 
  dplyr::mutate(dist2_disc = a)





a <- discretize(states_112x$YawDiff1_mod, method = "interval", breaks = 5)
write.csv(levels(a),"YawDiff1_Ranges.csv")
levels(a) <- c(1:5)


states_112x <- states_112x %>% ungroup() %>% 
  dplyr::mutate(YawDiff1_disc = a)



a <- discretize(states_112x$YawDiff2_mod, method = "interval", breaks = 5)
write.csv(levels(a),"YawDiff2_Ranges.csv")
levels(a) <- c(1:5)


states_112x <- states_112x %>% ungroup() %>% 
  dplyr::mutate(YawDiff2_disc = a)


a <- discretize(states_112x$speed_SGF, method = "interval", breaks = 5)
write.csv(levels(a),"speed_SGF_Ranges.csv")
levels(a) <- c(1:5)


states_112x <- states_112x %>% ungroup() %>% 
  dplyr::mutate(speed_SGF_disc = a)


# Actions discretization

a <- discretize(actions_112x$yawAngle_axis2, method = "interval", breaks = 5)
write.csv(levels(a),"yawAngle_axis2_Ranges.csv")
levels(a) <- c(1:5)


actions_112x <- actions_112x %>% ungroup() %>% 
  dplyr::mutate(yawAngle_axis2_disc = a)


a <- discretize(actions_112x$acc_SGF, method = "interval", breaks = 5)
write.csv(levels(a),"acc_SGF_Ranges.csv")
levels(a) <- c(1:5)


actions_112x <- actions_112x %>% ungroup() %>% 
  dplyr::mutate(acc_SGF_disc = a)

















states_112x <- states_112x %>% 
  dplyr::arrange(dist1_disc, dist2_disc, YawDiff1_disc,YawDiff2_disc,speed_SGF_disc)



states_112x <- states_112x %>% 
  dplyr::mutate(state_no = (as.numeric(dist1_disc)-1)*625+(as.numeric(dist2_disc)-1)*125+
                  (as.numeric(YawDiff1_disc)-1)*25+
                  (as.numeric(YawDiff2_disc)-1)*5+
                  as.numeric(speed_SGF_disc))



actions_112x <- actions_112x %>% 
  dplyr::arrange(acc_SGF_disc, yawAngle_axis2_disc)




actions_112x <- actions_112x %>% 
  dplyr::mutate(action_no = (as.numeric(acc_SGF_disc)-1)*5+
                  as.numeric(yawAngle_axis2_disc))

states_112x <- states_112x %>% 
  arrange(Obj_ID, F)


actions_112x <- actions_112x %>% 
  arrange(Obj_ID, F)


state_action_112x <- data.frame(Obj_ID = states_112x$Obj_ID, F = states_112x$F,state_no = states_112x$state_no, action_no = actions_112x$action_no)


state_action_112x <- state_action_112x %>% 
  group_by(Obj_ID) %>% 
  mutate(state_no_new = lead(state_no,default = NA))

state_action_112x <- state_action_112x[complete.cases(state_action_112x),]

length(state_action_112x$Obj_ID)

# Transition probabilities



trans_prob <- array(rep(0, 244140625), dim = c(3125,25,3125))

trans_s <- array(rep(0, 244140625), dim = c(3125,25,3125))



state_action_112x <- state_action_112x %>% 
  mutate(state_action = paste(state_no, action_no, sep = '_'))

state_action_112x_2 <- state_action_112x %>% 
  ungroup() %>% 
  dplyr::select(state_action, state_no_new)

state_action_112x_2 <- state_action_112x_2 %>% dplyr::arrange(state_action, state_no_new)

state_action_112x_2 <- state_action_112x_2 %>% 
  dplyr::group_by(state_action) %>% 
  dplyr::mutate(trans_count = n())

state_action_112x_3 <- state_action_112x_2 %>% 
  dplyr::mutate(state_action_state = paste(state_action, state_no_new, sep = '_'))

state_action_112x_3 <- state_action_112x_3 %>% 
  dplyr::group_by(state_action_state) %>% 
  dplyr::mutate(new_state_count = n())

state_action_112x_4 <- unique(state_action_112x_3)

state_action_112x_3 <- state_action_112x_3 %>% 
  dplyr::mutate(trans_prob = new_state_count/trans_count)

state_action_112x <- state_action_112x %>%
  dplyr::ungroup() %>% 
  dplyr::mutate(state_action = paste(state_no, action_no, sep = '_')) %>% 
  dplyr::arrange(state_action, state_no_new) %>% 
  dplyr::mutate(trans_prob = state_action_112x_3$trans_prob)

state_action_112x_6 <- state_action_112x %>% 
  dplyr::group_by(state_no) %>% 
  dplyr::arrange(state_no)

state_action6_count <- state_action_112x_6 %>% 
  dplyr::summarise(count = n())


for (i in 1:13405) {
  
  trans_prob[state_action_112x$state_no[i],state_action_112x$action_no[i],state_action_112x$state_no_new[i]] = state_action_112x$trans_prob[i]
}


for (i in 1:13405) {
  
  trans_s[state_action_112x$state_no[i],state_action_112x$action_no[i],state_action_112x$state_no_new[i]] = state_action_112x$state_no_new[i]
}

filename <- paste(tempfile(), ".mat", sep="")

library("R.matlab")
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

