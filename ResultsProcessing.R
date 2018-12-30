state_lookup <- data.frame(state_no = 1:3125)

state_lookup <- state_lookup %>% 
  dplyr::mutate(dist1_mod_disc = 0,
                dist2_mod_disc = 0,
                YawDiff1_mod_disc = 0,
                YawDiff2_mod_disc = 0,
                speed_SGF_disc = 0)

for (i in 1:3125) {
  
  state_lookup$dist1_mod_disc[i] = features_splittable[i,1]*1+
    features_splittable[i,2]*2+
    features_splittable[i,3]*3+
    features_splittable[i,4]*4+
    features_splittable[i,5]*5
  
  state_lookup$dist2_mod_disc[i] = features_splittable[i,6]*1+
    features_splittable[i,7]*2+
    features_splittable[i,8]*3+
    features_splittable[i,9]*4+
    features_splittable[i,10]*5
  
  state_lookup$YawDiff1_mod_disc[i] = features_splittable[i,11]*1+
    features_splittable[i,12]*2+
    features_splittable[i,13]*3+
    features_splittable[i,14]*4+
    features_splittable[i,15]*5
  
  state_lookup$YawDiff2_mod_disc[i] = features_splittable[i,16]*1+
    features_splittable[i,17]*2+
    features_splittable[i,18]*3+
    features_splittable[i,19]*4+
    features_splittable[i,20]*5
  
  state_lookup$speed_SGF_disc[i] = features_splittable[i,21]*1+
    features_splittable[i,22]*2+
    features_splittable[i,23]*3+
    features_splittable[i,24]*4+
    features_splittable[i,25]*5
  
}

# AN processing

AN_reward = read.csv("fMResult/AN_reward.csv",header = FALSE)

state_reward_AN <- state_lookup %>% 
  dplyr::mutate(reward = AN_reward[,1])


state_reward_AN <- as_tibble(state_reward_AN)

state_reward_AN$dist1_mod_disc = as.factor(state_reward_AN$dist1_mod_disc)
state_reward_AN$dist2_mod_disc = as.factor(state_reward_AN$dist2_mod_disc)
state_reward_AN$YawDiff1_mod_disc = as.factor(state_reward_AN$YawDiff1_mod_disc)
state_reward_AN$YawDiff2_mod_disc = as.factor(state_reward_AN$YawDiff2_mod_disc)
state_reward_AN$speed_SGF_disc = as.factor(state_reward_AN$speed_SGF_disc)


state_reward_AN <- within(state_reward_AN, speed_SGF_disc <- relevel(speed_SGF_disc, ref = 3))
state_reward_AN <- within(state_reward_AN, Long_distance_disc <- relevel(Long_distance_disc, ref = 3))
state_reward_AN <- within(state_reward_AN, Lateral_distance_disc <- relevel(Lateral_distance_disc, ref = 3))
state_reward_AN <- within(state_reward_AN, Speed_diff_disc <- relevel(Speed_diff_disc, ref = 3))
state_reward_AN <- within(state_reward_AN, pathDeviation_disc <- relevel(pathDeviation_disc, ref = 3))


a <- lm(data = state_reward_AN,formula = reward ~  dist1_mod_disc+
          dist2_mod_disc+
          YawDiff1_mod_disc+
          YawDiff2_mod_disc+
          speed_SGF_disc) # -1 if no intercept

summary(a)

b <- a$coefficients
AN_coeff <- as.data.frame(b)


write.csv(AN_coeff,"fMResult/AN_coeff.csv")


# state_reward_AN <- state_reward_AN %>% 
#   dplyr::mutate(estReward = predict(a,newdata = state_reward_AN[,2:6]))



