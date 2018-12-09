Traj_Obj_clipped3_merged <- full_join(Traj_Obj_112x_clipped3,Traj_Obj_121x_clipped3)
Traj_Obj_clipped3_merged <- full_join(Traj_Obj_clipped3_merged,Traj_Obj_122x_clipped3)
Traj_Obj_clipped3_merged <- full_join(Traj_Obj_clipped3_merged,Traj_Obj_142x_clipped3)
Traj_Obj_clipped3_merged <- full_join(Traj_Obj_clipped3_merged,Traj_Obj_152x_clipped3)
# Traj_Obj_clipped3_merged <- full_join(Traj_Obj_clipped3_merged,Traj_Obj_161x_clipped3)
# Traj_Obj_clipped3_merged <- full_join(Traj_Obj_clipped3_merged,Traj_Obj_162x_clipped3)
# Traj_Obj_clipped3_merged <- full_join(Traj_Obj_clipped3_merged,Traj_Obj_171x_clipped3)
# Traj_Obj_clipped3_merged <- full_join(Traj_Obj_clipped3_merged,Traj_Obj_172x_clipped3)
# Traj_Obj_clipped3_merged <- full_join(Traj_Obj_clipped3_merged,Traj_Obj_182x_clipped3)
# Traj_Obj_clipped3_merged <- full_join(Traj_Obj_clipped3_merged,Traj_Obj_191x_clipped3)
# Traj_Obj_clipped3_merged <- full_join(Traj_Obj_clipped3_merged,Traj_Obj_192x_clipped3)



minY <- min(Traj_Obj_clipped3_merged$Y_axis2_SGF)
minX <- min(Traj_Obj_clipped3_merged$X_axis2_SGF)
minSpeed <- min(Traj_Obj_clipped3_merged$speed_SGF)
minYaw <- min(Traj_Obj_clipped3_merged$yawAngle_axis2)
minAcc <- min(Traj_Obj_clipped3_merged$acc_SGF)


maxY <- max(Traj_Obj_clipped3_merged$Y_axis2_SGF)
maxX <- max(Traj_Obj_clipped3_merged$X_axis2_SGF)
maxSpeed <- max(Traj_Obj_clipped3_merged$speed_SGF)
maxYaw <- max(Traj_Obj_clipped3_merged$yawAngle_axis2)
maxAcc <- max(Traj_Obj_clipped3_merged$acc_SGF)

grid_spacing_X <- 1.24
grid_spacing_Y <- 1.24

breaksX <- seq(from = minX, to = maxX, by = grid_spacing_X)
breaksY <- seq(from = minY, to = maxY, by = grid_spacing_Y)
breaksSpeed <- seq(from = minSpeed, to = maxSpeed, length.out = 5)
breaksYaw <- seq(from = minYaw, to = maxYaw, length.out = 5)
breaksAcc <- seq(from = minAcc, to = maxAcc, length.out = 5)

# Tables

tables_XY_112x <- read.csv("Map/tables_XY-112x.csv")
tables_XY_121x <- read.csv("Map/tables_XY-121x.csv")
tables_XY_122x <- read.csv("Map/tables_XY-122x.csv")
tables_XY_142x <- read.csv("Map/tables_XY-142x.csv")
tables_XY_152x <- read.csv("Map/tables_XY-152x.csv")
tables_XY_161x <- read.csv("Map/tables_XY-161x.csv")
tables_XY_162x <- read.csv("Map/tables_XY-162x.csv")
tables_XY_171x <- read.csv("Map/tables_XY-171x.csv")
tables_XY_172x <- read.csv("Map/tables_XY-172x.csv")
tables_XY_182x <- read.csv("Map/tables_XY-182x.csv")
tables_XY_191x <- read.csv("Map/tables_XY-191x.csv")
tables_XY_192x <- read.csv("Map/tables_XY-192x.csv")

RotationAngle <- atan(abs(tables_XY_112x$X[1]-tables_XY_112x$X[2])/abs(tables_XY_112x$Y[1]-tables_XY_112x$Y[2]))

tables_XY_112x <- tables_XY_112x %>% 
  dplyr::mutate(X_axis2 = X * cos(RotationAngle) + Y * sin(RotationAngle)) %>% 
  dplyr::mutate(Y_axis2 = X * -1 * sin(RotationAngle) + Y * cos(RotationAngle)) %>% 
  mutate(xgrid = discretize(X_axis2,method = "fixed" ,breaks = breaksX,labels = seq(1:(length(breaksX)-1)))) %>% 
  mutate(ygrid = discretize(Y_axis2,method = "fixed" ,breaks = breaksY,labels = seq(1:(length(breaksY)-1))))

tables_XY_121x <- tables_XY_121x %>% 
  dplyr::mutate(X_axis2 = X * cos(RotationAngle) + Y * sin(RotationAngle)) %>% 
  dplyr::mutate(Y_axis2 = X * -1 * sin(RotationAngle) + Y * cos(RotationAngle))%>% 
  mutate(xgrid = discretize(X_axis2,method = "fixed" ,breaks = breaksX,labels = seq(1:(length(breaksX)-1)))) %>% 
  mutate(ygrid = discretize(Y_axis2,method = "fixed" ,breaks = breaksY,labels = seq(1:(length(breaksY)-1))))

tables_XY_122x <- tables_XY_122x %>% 
  dplyr::mutate(X_axis2 = X * cos(RotationAngle) + Y * sin(RotationAngle)) %>% 
  dplyr::mutate(Y_axis2 = X * -1 * sin(RotationAngle) + Y * cos(RotationAngle))%>% 
  mutate(xgrid = discretize(X_axis2,method = "fixed" ,breaks = breaksX,labels = seq(1:(length(breaksX)-1)))) %>% 
  mutate(ygrid = discretize(Y_axis2,method = "fixed" ,breaks = breaksY,labels = seq(1:(length(breaksY)-1))))

tables_XY_142x <- tables_XY_142x %>% 
  dplyr::mutate(X_axis2 = X * cos(RotationAngle) + Y * sin(RotationAngle)) %>% 
  dplyr::mutate(Y_axis2 = X * -1 * sin(RotationAngle) + Y * cos(RotationAngle))%>% 
  mutate(xgrid = discretize(X_axis2,method = "fixed" ,breaks = breaksX,labels = seq(1:(length(breaksX)-1)))) %>% 
  mutate(ygrid = discretize(Y_axis2,method = "fixed" ,breaks = breaksY,labels = seq(1:(length(breaksY)-1))))

tables_XY_152x <- tables_XY_152x %>% 
  dplyr::mutate(X_axis2 = X * cos(RotationAngle) + Y * sin(RotationAngle)) %>% 
  dplyr::mutate(Y_axis2 = X * -1 * sin(RotationAngle) + Y * cos(RotationAngle))%>% 
  mutate(xgrid = discretize(X_axis2,method = "fixed" ,breaks = breaksX,labels = seq(1:(length(breaksX)-1)))) %>% 
  mutate(ygrid = discretize(Y_axis2,method = "fixed" ,breaks = breaksY,labels = seq(1:(length(breaksY)-1))))

tables_XY_161x <- tables_XY_161x %>% 
  dplyr::mutate(X_axis2 = X * cos(RotationAngle) + Y * sin(RotationAngle)) %>% 
  dplyr::mutate(Y_axis2 = X * -1 * sin(RotationAngle) + Y * cos(RotationAngle))%>% 
  mutate(xgrid = discretize(X_axis2,method = "fixed" ,breaks = breaksX,labels = seq(1:(length(breaksX)-1)))) %>% 
  mutate(ygrid = discretize(Y_axis2,method = "fixed" ,breaks = breaksY,labels = seq(1:(length(breaksY)-1))))

tables_XY_162x <- tables_XY_162x %>% 
  dplyr::mutate(X_axis2 = X * cos(RotationAngle) + Y * sin(RotationAngle)) %>% 
  dplyr::mutate(Y_axis2 = X * -1 * sin(RotationAngle) + Y * cos(RotationAngle))%>% 
  mutate(xgrid = discretize(X_axis2,method = "fixed" ,breaks = breaksX,labels = seq(1:(length(breaksX)-1)))) %>% 
  mutate(ygrid = discretize(Y_axis2,method = "fixed" ,breaks = breaksY,labels = seq(1:(length(breaksY)-1))))

tables_XY_171x <- tables_XY_171x %>% 
  dplyr::mutate(X_axis2 = X * cos(RotationAngle) + Y * sin(RotationAngle)) %>% 
  dplyr::mutate(Y_axis2 = X * -1 * sin(RotationAngle) + Y * cos(RotationAngle))%>% 
  mutate(xgrid = discretize(X_axis2,method = "fixed" ,breaks = breaksX,labels = seq(1:(length(breaksX)-1)))) %>% 
  mutate(ygrid = discretize(Y_axis2,method = "fixed" ,breaks = breaksY,labels = seq(1:(length(breaksY)-1))))

tables_XY_172x <- tables_XY_172x %>% 
  dplyr::mutate(X_axis2 = X * cos(RotationAngle) + Y * sin(RotationAngle)) %>% 
  dplyr::mutate(Y_axis2 = X * -1 * sin(RotationAngle) + Y * cos(RotationAngle))%>% 
  mutate(xgrid = discretize(X_axis2,method = "fixed" ,breaks = breaksX,labels = seq(1:(length(breaksX)-1)))) %>% 
  mutate(ygrid = discretize(Y_axis2,method = "fixed" ,breaks = breaksY,labels = seq(1:(length(breaksY)-1))))

tables_XY_182x <- tables_XY_182x %>% 
  dplyr::mutate(X_axis2 = X * cos(RotationAngle) + Y * sin(RotationAngle)) %>% 
  dplyr::mutate(Y_axis2 = X * -1 * sin(RotationAngle) + Y * cos(RotationAngle))%>% 
  mutate(xgrid = discretize(X_axis2,method = "fixed" ,breaks = breaksX,labels = seq(1:(length(breaksX)-1)))) %>% 
  mutate(ygrid = discretize(Y_axis2,method = "fixed" ,breaks = breaksY,labels = seq(1:(length(breaksY)-1))))

tables_XY_191x <- tables_XY_191x %>% 
  dplyr::mutate(X_axis2 = X * cos(RotationAngle) + Y * sin(RotationAngle)) %>% 
  dplyr::mutate(Y_axis2 = X * -1 * sin(RotationAngle) + Y * cos(RotationAngle))%>% 
  mutate(xgrid = discretize(X_axis2,method = "fixed" ,breaks = breaksX,labels = seq(1:(length(breaksX)-1)))) %>% 
  mutate(ygrid = discretize(Y_axis2,method = "fixed" ,breaks = breaksY,labels = seq(1:(length(breaksY)-1))))

tables_XY_192x <- tables_XY_192x %>% 
  dplyr::mutate(X_axis2 = X * cos(RotationAngle) + Y * sin(RotationAngle)) %>% 
  dplyr::mutate(Y_axis2 = X * -1 * sin(RotationAngle) + Y * cos(RotationAngle))%>% 
  mutate(xgrid = discretize(X_axis2,method = "fixed" ,breaks = breaksX,labels = seq(1:(length(breaksX)-1)))) %>% 
  mutate(ygrid = discretize(Y_axis2,method = "fixed" ,breaks = breaksY,labels = seq(1:(length(breaksY)-1))))


Traj_Obj_112x_clipped3 <- Traj_Obj_112x_clipped3 %>% 
  mutate(xgrid = discretize(X_axis2_SGF,method = "fixed" ,breaks = breaksX,labels = seq(1:(length(breaksX)-1)))) %>% 
  mutate(ygrid = discretize(Y_axis2_SGF,method = "fixed" ,breaks = breaksY,labels = seq(1:(length(breaksY)-1)))) %>% 
  mutate(speedGrid = discretize(speed_SGF,method = "fixed" ,breaks = breaksSpeed,labels = seq(1:(length(breaksSpeed)-1)))) %>% 
  mutate(yawGrid = discretize(yawAngle_axis2,method = "fixed" ,breaks = breaksYaw,labels = seq(1:(length(breaksYaw)-1)))) %>% 
  mutate(accGrid = discretize(acc_SGF,method = "fixed" ,breaks = breaksAcc,labels = seq(1:(length(breaksAcc)-1))))
