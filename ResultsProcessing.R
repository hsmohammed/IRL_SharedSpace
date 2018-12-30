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