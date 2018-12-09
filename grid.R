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
