source("loadLibraries.R")
Traj_Obj_161x_clipped3 <- Traj_Obj_161x_clipped2

Traj_Obj_161x_clipped3$X_SGF

tables_XY <- read.csv("Map/tables_XY-161x.csv")

# plot tables on map
ima_212 <- png::readPNG("Map/RB-1-6--world.png")
p1 <- tables_XY %>% 
  ggplot(aes(X,Y, col = code, group = code))+
  annotation_custom(rasterGrob(ima_212, width = unit(1,"npc"), 
                               height = unit(1,"npc")), 
                    0, 109, 0, 73)+
  geom_path(na.rm = TRUE, size = 1) +
  scale_x_continuous(limits = c(0,73), expand = c(0,0))+
  scale_y_continuous(limits = c(0,109), expand = c(0,0))
ggsave(filename = "Map/tables_XY-161x.jpg",p1)

#calculate rotation angle
RotationAngle <- atan(abs(tables_XY_112x$X[1]-tables_XY_112x$X[2])/abs(tables_XY_112x$Y[1]-tables_XY_112x$Y[2]))

Traj_Obj_161x_clipped3 <- Traj_Obj_161x_clipped3 %>% 
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
Traj_Obj_161x_clipped3 <- Traj_Obj_161x_clipped3[complete.cases(Traj_Obj_161x_clipped3),]
