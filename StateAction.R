source("loadLibraries.R")
Traj_Obj_111x_clipped3 <- Traj_Obj_111x_clipped2

Traj_Obj_111x_clipped3$X_SGF

tables_XY <- read.csv("Map/tables_XY.csv")

# plot tables on map
p1 <- tables_XY %>% 
  ggplot(aes(X,Y, col = code, group = code))+
  annotation_custom(rasterGrob(ima_212, width = unit(1,"npc"), 
                               height = unit(1,"npc")), 
                    0, 100, 0, 67)+
  geom_path(na.rm = TRUE, size = 1) +
  scale_x_continuous(limits = c(0,67), expand = c(0,0))+
  scale_y_continuous(limits = c(0,100), expand = c(0,0))
ggsave(filename = "Map/tables_XY.jpg",p1)

#calculate rotation angle
RotationAngle <- atan(abs(tables_XY$X[5]-tables_XY$X[6])/abs(tables_XY$X[5]-tables_XY$X[6]))

Traj_Obj_111x_clipped3 <- Traj_Obj_111x_clipped3 %>% 
  mutate(X_axis2_SGF = X_SGF * cos(RotationAngle) + Y_SGF * sin(RotationAngle)) %>% 
  mutate(Y_axis2_SGF = X_SGF * -1* sin(RotationAngle) + Y_SGF * cos(RotationAngle)) %>% 
  dplyr::mutate(deltaX = X_axis2_SGF - lag(X_axis2_SGF, default = NA )) %>% 
  dplyr::mutate(deltaY = X_axis2_SGF - lag(X_axis2_SGF, default = NA )) %>% 
  dplyr::mutate(quarter = ifelse(deltaX > 0 & deltaY > 0, 1, 
                                 ifelse(deltaX > 0 & deltaY < 0, 2, 
                                        ifelse(deltaX <0 & deltaY <0, 3,
                                               ifelse(deltaX <0 & deltaY > 0, 4, 1))))) %>% 
  dplyr::mutate(yawAngle_axis2 = ifelse(quarter == 1, atan(deltaX/deltaY),
                                        ifelse(quarter == 2, pi - atan(abs(deltaX/deltaY)),
                                               ifelse(quarter == 3, (pi + atan(abs(deltaX/deltaY)))-2*pi,
                                                      2 * pi - atan(abs(deltaX/deltaY))-2*pi))))
Traj_Obj_111x_clipped3 <- Traj_Obj_111x_clipped3[complete.cases(Traj_Obj_111x_clipped3),]

#compute grid
minY <- min(Traj_Obj_111x_clipped3$Y_axis2_SGF)
minX <- min(Traj_Obj_111x_clipped3$X_axis2_SGF)
minSpeed <- min(Traj_Obj_111x_clipped3$speed_SGF)
minYaw <- min(Traj_Obj_111x_clipped3$yawAngle_axis2)
minAcc <- min(Traj_Obj_111x_clipped3$acc_SGF)


maxY <- max(Traj_Obj_111x_clipped3$Y_axis2_SGF)
maxX <- max(Traj_Obj_111x_clipped3$X_axis2_SGF)
maxSpeed <- max(Traj_Obj_111x_clipped3$speed_SGF)
maxYaw <- max(Traj_Obj_111x_clipped3$yawAngle_axis2)
maxAcc <- max(Traj_Obj_111x_clipped3$acc_SGF)

grid_spacing_X <- 1.24
grid_spacing_Y <- 1.24

breaksX <- seq(from = minX, to = maxX, by = grid_spacing_X)
breaksY <- seq(from = minY, to = maxY, by = grid_spacing_Y)
breaksSpeed <- seq(from = minSpeed, to = maxSpeed, length.out = 5)
breaksYaw <- seq(from = minYaw, to = maxYaw, length.out = 5)
breaksAcc <- seq(from = minAcc, to = maxAcc, length.out = 5)



Traj_Obj_111x_clipped3 <- Traj_Obj_111x_clipped3 %>% 
  mutate(xgrid = discretize(X_axis2_SGF,method = "fixed" ,breaks = breaksX,labels = seq(1:(length(breaksX)-1)))) %>% 
  mutate(ygrid = discretize(Y_axis2_SGF,method = "fixed" ,breaks = breaksY,labels = seq(1:(length(breaksY)-1)))) %>% 
  mutate(speedGrid = discretize(speed_SGF,method = "fixed" ,breaks = breaksSpeed,labels = seq(1:(length(breaksSpeed)-1)))) %>% 
  mutate(yawGrid = discretize(yawAngle_axis2,method = "fixed" ,breaks = breaksYaw,labels = seq(1:(length(breaksYaw)-1)))) %>% 
  mutate(accGrid = discretize(acc_SGF,method = "fixed" ,breaks = breaksAcc,labels = seq(1:(length(breaksAcc)-1))))

p1 <- tables_XY %>% 
  ggplot(aes(X,Y, col = code, group = code))+
  annotation_custom(rasterGrob(ima_212, width = unit(1,"npc"), 
                               height = unit(1,"npc")), 
                    0, 100, 0, 67)+
  geom_path(na.rm = TRUE, size = 1) +
  scale_x_continuous(limits = c(0,67), expand = c(0,0))+
  scale_y_continuous(limits = c(0,100), expand = c(0,0))
ggsave(filename = "Map/tables_XY.jpg",p1)
