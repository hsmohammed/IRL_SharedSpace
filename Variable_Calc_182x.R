Traj_Obj_182x_variables <- Traj_Obj_182x_clipped3 %>% 
  dplyr::group_by(comp) %>% 
  dplyr::arrange(F, Y_axis2_SGF)

# a <- Traj_Obj_182x_variables %>% 
#   dplyr::group_by(F) %>% 
#   dplyr::filter(type == "p") %>% 
#   dplyr::summarise(count = n())
# 
b <- Traj_Obj_182x_variables %>%
  dplyr::group_by(F) %>%
  dplyr::filter(type == "b") %>%
  dplyr::summarise(count = n())


Traj_Obj_182x_bicycles <- Traj_Obj_182x_variables %>% 
  dplyr::filter(type == "b")

Traj_Obj_182x_pedestrians <- Traj_Obj_182x_variables %>% 
  dplyr::filter(type == "p")

Traj_Obj_182x_bicycles_count <- Traj_Obj_182x_bicycles %>% 
  dplyr::group_by(F) %>% 
  dplyr::summarize(count = n())

Traj_Obj_182x_bicycles_count_one <- Traj_Obj_182x_bicycles_count %>% 
  dplyr::filter(count == 1)

Traj_Obj_182x_bicycles_count_two <- Traj_Obj_182x_bicycles_count %>% 
  dplyr::filter(count == 2)

Traj_Obj_182x_bicycles_count_three <- Traj_Obj_182x_bicycles_count %>% 
  dplyr::filter(count == 3)

Traj_Obj_182x_bicycles_onePerFrame <- Traj_Obj_182x_bicycles %>% 
  dplyr::filter(F %in% Traj_Obj_182x_bicycles_count_one$F)


Traj_Obj_182x_bicycles_twoPerFrame <- Traj_Obj_182x_bicycles %>% 
  dplyr::filter(F %in% Traj_Obj_182x_bicycles_count_two$F)

Traj_Obj_182x_bicycles_threePerFrame <- Traj_Obj_182x_bicycles %>% 
  dplyr::filter(F %in% Traj_Obj_182x_bicycles_count_three$F)


Traj_Obj_182x_bicycles_twoPerFrame <- Traj_Obj_182x_bicycles_twoPerFrame %>% 
  dplyr::group_by(F) %>% 
  dplyr::arrange(F) %>% 
  dplyr::mutate(d = Y_axis2_SGF - lag(Y_axis2_SGF, default = NA))

Traj_Obj_182x_bicycles_twoPerFrame <- Traj_Obj_182x_bicycles_twoPerFrame[complete.cases(Traj_Obj_182x_bicycles_twoPerFrame),]


Traj_Obj_182x_bicycles_threePerFrame <- Traj_Obj_182x_bicycles_threePerFrame %>% 
  dplyr::group_by(F) %>% 
  dplyr::arrange(F) %>% 
  dplyr::mutate(d = Y_axis2_SGF - lag(Y_axis2_SGF, default = NA))

Traj_Obj_182x_bicycles_threePerFrame <- Traj_Obj_182x_bicycles_threePerFrame[complete.cases(Traj_Obj_182x_bicycles_threePerFrame),]


Traj_Obj_182x_bicycles_threePerFrame <- Traj_Obj_182x_bicycles_threePerFrame %>% 
  dplyr::group_by(F) %>% 
  dplyr::arrange(F) %>% 
  dplyr::mutate(d = Y_axis2_SGF - lag(Y_axis2_SGF, default = NA))

Traj_Obj_182x_bicycles_threePerFrame <- Traj_Obj_182x_bicycles_threePerFrame[complete.cases(Traj_Obj_182x_bicycles_threePerFrame),]

Traj_Obj_182x_bicyclesOnly <- full_join(Traj_Obj_182x_bicycles_onePerFrame, Traj_Obj_182x_bicycles_twoPerFrame)
Traj_Obj_182x_bicyclesOnly <- full_join(Traj_Obj_182x_bicyclesOnly, Traj_Obj_182x_bicycles_threePerFrame)


Traj_Obj_182x_bicyclesOnly_count <- Traj_Obj_182x_bicyclesOnly %>% dplyr::group_by(F) %>% dplyr::summarise(count = n())


Traj_Obj_182x_bicyclesAndPed <- full_join(Traj_Obj_182x_bicyclesOnly, Traj_Obj_182x_pedestrians)

Traj_Obj_182x_bicyclesAndPed <- Traj_Obj_182x_bicyclesAndPed %>% 
  dplyr::group_by(comp) %>% 
  dplyr::arrange(F, type)

Traj_Obj_182x_bicyclesAndPed <- Traj_Obj_182x_bicyclesAndPed %>% 
  dplyr::ungroup() %>% 
  dplyr::group_by(F) %>% 
  dplyr::mutate(absoluteDist = sqrt((first(Y_axis2_SGF) - Y_axis2_SGF)^2 + (first(X_axis2_SGF) - X_axis2_SGF)^2)) %>% 
  dplyr::mutate(YawDiff = abs(first(yawAngle_axis2) - yawAngle_axis2))

Traj_Obj_182x_bicyclesAndPed <- Traj_Obj_182x_bicyclesAndPed %>% arrange(F, absoluteDist)
Traj_Obj_182x_bicyclesAndPed <- Traj_Obj_182x_bicyclesAndPed %>% 
  dplyr::mutate(dist1 = nth(absoluteDist, 2),
                dist2 = nth(absoluteDist, 3),
                dist3 = nth(absoluteDist, 4),
                dist4 = nth(absoluteDist, 5))

Traj_Obj_182x_bicyclesAndPed <- Traj_Obj_182x_bicyclesAndPed %>% 
  dplyr::mutate(dist1_mod = ifelse(is.na(dist1), 99, dist1),
                dist2_mod = ifelse(is.na(dist2), 99, dist2),
                dist3_mod = ifelse(is.na(dist3), 99, dist3),
                dist4_mod = ifelse(is.na(dist4), 99, dist4))

Traj_Obj_182x_bicyclesAndPed <- Traj_Obj_182x_bicyclesAndPed %>% 
  dplyr::mutate(YawDiff1 = nth(YawDiff, 2),
                YawDiff2 = nth(YawDiff, 3),
                YawDiff3 = nth(YawDiff, 4),
                YawDiff4 = nth(YawDiff, 5))


Traj_Obj_182x_bicyclesAndPed <- Traj_Obj_182x_bicyclesAndPed %>% 
  dplyr::mutate(YawDiff1_mod = ifelse(is.na(YawDiff1), 0, YawDiff1),
                YawDiff2_mod = ifelse(is.na(YawDiff2), 0, YawDiff2),
                YawDiff3_mod = ifelse(is.na(YawDiff3), 0, YawDiff3),
                YawDiff4_mod = ifelse(is.na(YawDiff4), 0, YawDiff4))
