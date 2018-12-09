Traj_Obj_clipped3_merged <- full_join(Traj_Obj_112x_clipped3,Traj_Obj_121x_clipped3)
Traj_Obj_clipped3_merged <- full_join(Traj_Obj_clipped3_merged,Traj_Obj_122x_clipped3)
Traj_Obj_clipped3_merged <- full_join(Traj_Obj_clipped3_merged,Traj_Obj_142x_clipped3)
Traj_Obj_clipped3_merged <- full_join(Traj_Obj_clipped3_merged,Traj_Obj_152x_clipped3)
Traj_Obj_clipped3_merged <- full_join(Traj_Obj_clipped3_merged,Traj_Obj_161x_clipped3)
Traj_Obj_clipped3_merged <- full_join(Traj_Obj_clipped3_merged,Traj_Obj_162x_clipped3)
Traj_Obj_clipped3_merged <- full_join(Traj_Obj_clipped3_merged,Traj_Obj_171x_clipped3)
Traj_Obj_clipped3_merged <- full_join(Traj_Obj_clipped3_merged,Traj_Obj_172x_clipped3)
Traj_Obj_clipped3_merged <- full_join(Traj_Obj_clipped3_merged,Traj_Obj_182x_clipped3)
Traj_Obj_clipped3_merged <- full_join(Traj_Obj_clipped3_merged,Traj_Obj_191x_clipped3)
Traj_Obj_clipped3_merged <- full_join(Traj_Obj_clipped3_merged,Traj_Obj_192x_clipped3)



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

RotationAngle_112x <- atan(abs(tables_XY_112x$X[1]-tables_XY_112x$X[2])/abs(tables_XY_112x$Y[1]-tables_XY_112x$Y[2]))
RotationAngle_121x <- atan(abs(tables_XY_121x$X[1]-tables_XY_121x$X[2])/abs(tables_XY_121x$Y[1]-tables_XY_121x$Y[2]))
RotationAngle_122x <- atan(abs(tables_XY_122x$X[1]-tables_XY_122x$X[2])/abs(tables_XY_122x$Y[1]-tables_XY_122x$Y[2]))
RotationAngle_142x <- atan(abs(tables_XY_142x$X[1]-tables_XY_142x$X[2])/abs(tables_XY_142x$Y[1]-tables_XY_142x$Y[2]))
RotationAngle_152x <- atan(abs(tables_XY_152x$X[1]-tables_XY_152x$X[2])/abs(tables_XY_152x$Y[1]-tables_XY_152x$Y[2]))
RotationAngle_161x <- atan(abs(tables_XY_161x$X[1]-tables_XY_161x$X[2])/abs(tables_XY_161x$Y[1]-tables_XY_161x$Y[2]))
RotationAngle_162x <- atan(abs(tables_XY_162x$X[1]-tables_XY_162x$X[2])/abs(tables_XY_162x$Y[1]-tables_XY_162x$Y[2]))
RotationAngle_171x <- atan(abs(tables_XY_171x$X[1]-tables_XY_171x$X[2])/abs(tables_XY_171x$Y[1]-tables_XY_171x$Y[2]))
RotationAngle_172x <- atan(abs(tables_XY_172x$X[1]-tables_XY_172x$X[2])/abs(tables_XY_172x$Y[1]-tables_XY_172x$Y[2]))
RotationAngle_182x <- atan(abs(tables_XY_182x$X[1]-tables_XY_182x$X[2])/abs(tables_XY_182x$Y[1]-tables_XY_182x$Y[2]))
RotationAngle_191x <- atan(abs(tables_XY_191x$X[1]-tables_XY_191x$X[2])/abs(tables_XY_191x$Y[1]-tables_XY_191x$Y[2]))
RotationAngle_192x <- atan(abs(tables_XY_192x$X[1]-tables_XY_192x$X[2])/abs(tables_XY_192x$Y[1]-tables_XY_192x$Y[2]))

