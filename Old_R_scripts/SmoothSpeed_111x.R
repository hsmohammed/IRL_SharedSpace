Traj_Obj_111x_clipped <- Traj_Obj_111x_merged
Traj_Obj_111x_clipped2 <- Traj_Obj_111x_clipped %>% 
  group_by(comp) %>% 
  group_by(Obj) %>% 
  dplyr::mutate(X_SGF = sgolayfilt(X,p = 2,n = 15)) %>% 
  dplyr::mutate(Y_SGF = sgolayfilt(Y,p = 2,n = 15)) %>% 
  dplyr::mutate(V_mps_corrected = V_mps/1.3268) %>% 
  dplyr::mutate(speed_SGF = sgolayfilt(V_mps_corrected,p = 2,n = 15)) %>% 
  dplyr::mutate(VX_mps_corrected = VX/1.3268) %>% 
  dplyr::mutate(speed_x_SGF = sgolayfilt(VX_mps_corrected,p = 2,n = 15)) %>% 
  dplyr::mutate(VY_mps_corrected = VY/1.3268) %>% 
  dplyr::mutate(speed_y_SGF = sgolayfilt(VY_mps_corrected,p = 2,n = 15)) %>% 
  dplyr::mutate(acc_inst = (lead(speed_SGF, default = NA)-speed_SGF)*15) %>% 
  dplyr::mutate(acc_inst_x = (lead(speed_x_SGF, default = NA)-speed_x_SGF)*15) %>% 
  dplyr::mutate(acc_inst_y = (lead(speed_y_SGF, default = NA)-speed_y_SGF)*15) %>% 
  dplyr::mutate(yawAngle = asin((lag(X_SGF, default = NA )-X_SGF)/(sqrt((lag(X_SGF, default = NA )-X_SGF)^2+(lag(Y_SGF, default = NA )-Y_SGF)^2)))) %>% 
  dplyr::mutate(lateral_distance_to_edge = abs(X_SGF-53))

Traj_Obj_111x_clipped2$Obj_ID <- factor(Traj_Obj_111x_clipped2$Obj_ID)  




Traj_Obj_111x_clipped2 <- Traj_Obj_111x_clipped2[complete.cases(Traj_Obj_111x_clipped2), ]

Traj_Obj_111x_clipped2 <- Traj_Obj_111x_clipped2 %>%
  dplyr::group_by(Obj_ID) %>% 
  dplyr::mutate(acc_SGF = sgolayfilt(acc_inst,p = 4,n = 15)) %>% 
  dplyr::mutate(acc_SGF_x = sgolayfilt(acc_inst_x,p = 4,n = 15)) %>% 
  dplyr::mutate(acc_SGF_y = sgolayfilt(acc_inst_y,p = 4,n = 15)) %>% 
  dplyr::mutate(yawAngle_SGF = sgolayfilt(yawAngle,p = 4,n = 15)) %>% 
  dplyr::mutate(yawRate = (lag(yawAngle_SGF, default = NA )-yawAngle_SGF)*15) 


Traj_Obj_111x_clipped2 <- Traj_Obj_111x_clipped2[complete.cases(Traj_Obj_111x_clipped2), ]

Traj_Obj_111x_clipped2 <- Traj_Obj_111x_clipped2 %>% 
  group_by(Obj_ID) %>%
  mutate(yawRate_SGF = sgolayfilt(yawRate,p = 4,n = 15)) %>% 
  mutate(jerk = (lag(acc_SGF, default = NA )-acc_SGF)*15) 

Traj_Obj_111x_clipped2 <- Traj_Obj_111x_clipped2[complete.cases(Traj_Obj_111x_clipped2), ]


Traj_Obj_111x_clipped2 <- Traj_Obj_111x_clipped2 %>% 
  group_by(Obj_ID) %>%
  mutate(jerk_SGF = sgolayfilt(jerk,p = 4,n = 15))

Traj_Obj_111x_clipped2 <- subset(Traj_Obj_111x_clipped2,(Traj_Obj_111x_clipped2$Y < 80&Traj_Obj_111x_clipped2$Y > 30))





# Traj_Obj_111x_clipped2 <- Traj_Obj_111x_clipped2 %>% 
#   group_by(comp) %>% 
#   group_by(Obj) %>% 

# Traj_Obj_111x_clipped2 <- Traj_Obj_111x_clipped2[c(FALSE,Traj_Obj_111x_clipped2$Obj[-1]==Traj_Obj_111x_clipped2$Obj[-(nrow(Traj_Obj_111x_clipped2)-1)]),]



# Traj_Obj_111x_clipped2 <- Traj_Obj_111x_clipped2 %>% 
#   group_by(comp) %>% 
#   group_by(Obj) %>% 
#   mutate(speed_3frame_mps =rollmean(speed_inst, 3, na.pad = TRUE, align = "right")) %>% 
#   mutate(speed_5frame_mps =rollmean(speed_inst, 5, na.pad = TRUE, align = "right")) %>% 
#   mutate(speed_7frame_mps =rollmean(speed_inst, 7, na.pad = TRUE, align = "right")) %>% 
#   mutate(speed_9frame_mps =rollmean(speed_inst, 9, na.pad = TRUE, align = "right")) %>% 
#   mutate(speed_11frame_mps =rollmean(speed_inst, 11, na.pad = TRUE, align = "right")) %>% 
#   mutate(speed_13frame_mps =rollmean(speed_inst, 13, na.pad = TRUE, align = "right")) %>% 
#   mutate(speed_15frame_mps =rollmean(speed_inst, 15, na.pad = TRUE, align = "right")) %>% 
#   mutate(yawAngle_3frame_mps =rollmean(yawAngle, 3, na.pad = TRUE, align = "right")) %>% 
#   mutate(yawAngle_5frame_mps =rollmean(yawAngle, 5, na.pad = TRUE, align = "right")) %>% 
#   mutate(yawAngle_7frame_mps =rollmean(yawAngle, 7, na.pad = TRUE, align = "right")) %>% 
#   mutate(yawAngle_9frame_mps =rollmean(yawAngle, 9, na.pad = TRUE, align = "right")) %>%
#   mutate(yawAngle_11frame_mps =rollmean(yawAngle, 11, na.pad = TRUE, align = "right")) %>%
#   mutate(yawAngle_13frame_mps =rollmean(yawAngle, 13, na.pad = TRUE, align = "right")) %>%
#   mutate(yawAngle_15frame_mps =rollmean(yawAngle, 15, na.pad = TRUE, align = "right")) %>%
#   mutate(yawRate_3frame_mps =rollmean(yawRate, 3, na.pad = TRUE, align = "right")) %>% 
#   mutate(yawRate_5frame_mps =rollmean(yawRate, 5, na.pad = TRUE, align = "right")) %>% 
#   mutate(yawRate_7frame_mps =rollmean(yawRate, 7, na.pad = TRUE, align = "right")) %>% 
#   mutate(yawRate_9frame_mps =rollmean(yawRate, 9, na.pad = TRUE, align = "right")) %>%
#   mutate(yawRate_11frame_mps =rollmean(yawRate, 11, na.pad = TRUE, align = "right")) %>%
#   mutate(yawRate_13frame_mps =rollmean(yawRate, 13, na.pad = TRUE, align = "right")) %>%
#   mutate(yawRate_15frame_mps =rollmean(yawRate, 15, na.pad = TRUE, align = "right")) 
# 
# Traj_Obj_111x_clipped2 <- Traj_Obj_111x_clipped2[complete.cases(Traj_Obj_111x_clipped2), ]
# 
# Traj_Obj_111x_clipped2 <- Traj_Obj_111x_clipped2 %>% 
#   group_by(comp) %>% 
#   group_by(Obj) %>% 
#   mutate(acc_inst = (lag(speed_15frame_mps, default = NA )-speed_15frame_mps)*15) %>% 
#   mutate(acc_15frame_mps2 = rollmean(acc_inst, 7, na.pad = TRUE, align = "right"))
# 
# Traj_Obj_111x_clipped2 <- Traj_Obj_111x_clipped2[c(FALSE,Traj_Obj_111x_clipped2$Obj[-1]==Traj_Obj_111x_clipped2$Obj[-(nrow(Traj_Obj_111x_clipped2)-1)]),]
# 
# Traj_Obj_111x_clipped2 <- Traj_Obj_111x_clipped2[complete.cases(Traj_Obj_111x_clipped2), ]
# Traj_Obj_111x_clipped2 <- Traj_Obj_111x_clipped2[c(FALSE,Traj_Obj_111x_clipped2$Obj[-1]==Traj_Obj_111x_clipped2$Obj[-(nrow(Traj_Obj_111x_clipped2)-1)]),]
