following_111x <- read.csv("following_111x.csv")
following_112x <- read.csv("following_112x.csv")

names(following_111x)[1] <- "comp"
names(following_111x)[2] <- "lead"
names(following_111x)[3] <- "follow"

names(following_112x)[1] <- "comp"
names(following_112x)[2] <- "lead"
names(following_112x)[3] <- "follow"

# Overlapping Trajectories

#   
# Traj_Obj_111x_Intervals <- Traj_Obj_111x_clipped2 %>% 
#   group_by(Obj_ID) %>% 
#   summarize(FF = F[1], LF = FF+n()-1)
# 
# Traj_Obj_111x_Intervals_matrix <- data.matrix(Traj_Obj_111x_Intervals[,2:3], rownames.force = NA)
# Traj_Obj_111x_Intervals_matrix <- Intervals(Traj_Obj_111x_Intervals_matrix)
# fol_111x_events <- interval_overlap(Traj_Obj_111x_Intervals_matrix,Traj_Obj_111x_Intervals_matrix)
# fol_111x_events_count <- data.frame(Obj_ID = levels(Traj_Obj_111x_clipped2$Obj_ID),serial = 1:length(fol_111x_events), 
#                                     Obj_1= NA,
#                                     Obj_2= NA,
#                                     Obj_3= NA,
#                                     Obj_4= NA,
#                                     Obj_5= NA,
#                                     Obj_6= NA,
#                                     Obj_7= NA,
#                                     Obj_8= NA)
# 
# # for (i in 1:length(fol_111x_events)) {
# #   fol_111x_events_count$count[i] <- length(fol_111x_events[[i]]) 
# #   
# # } 
# # 
# # max_events <- max(fol_111x_events_count$count)
# 
# for (i in 1:length(fol_111x_events)) {
#   for (j in 1:length(fol_111x_events[[i]])) {
#     fol_111x_events_count[[j+2]][i]<- fol_111x_events[[i]][j]
#   }
# } 
# 
# for (i in 1:nlevels(Traj_Obj_111x_clipped2$Obj_ID)) {
#   Obj_1 <- fol_111x_events_count$Obj_1[i]
#   Obj_2 <- fol_111x_events_count$Obj_2[i]
#   Obj_3 <- fol_111x_events_count$Obj_3[i]
#   Obj_4 <- fol_111x_events_count$Obj_4[i]
#   Obj_5 <- fol_111x_events_count$Obj_5[i]
#   Obj_6 <- fol_111x_events_count$Obj_6[i]
#   Obj_7 <- fol_111x_events_count$Obj_7[i]
#   Obj_8 <- fol_111x_events_count$Obj_8[i]
#   
#   Obj_lvls <- levels(Traj_Obj_111x_clipped2$Obj_ID)
#   
#   p1 <- Traj_Obj_111x_clipped2 %>% 
#     dplyr::filter(Obj_ID == Obj_lvls[Obj_1])
#   p2 <- Traj_Obj_111x_clipped2 %>% 
#     dplyr::filter(Obj_ID == Obj_lvls[Obj_2])
#   p3 <- Traj_Obj_111x_clipped2 %>% 
#     dplyr::filter(Obj_ID == Obj_lvls[Obj_3])
#   p4 <- Traj_Obj_111x_clipped2 %>% 
#     dplyr::filter(Obj_ID == Obj_lvls[Obj_4])
#   p5 <- Traj_Obj_111x_clipped2 %>% 
#     dplyr::filter(Obj_ID == Obj_lvls[Obj_5])
#   p6 <- Traj_Obj_111x_clipped2 %>% 
#     dplyr::filter(Obj_ID == Obj_lvls[Obj_6])
#   p7 <- Traj_Obj_111x_clipped2 %>% 
#     dplyr::filter(Obj_ID == Obj_lvls[Obj_7])
#   p8 <- Traj_Obj_111x_clipped2 %>% 
#     dplyr::filter(Obj_ID == Obj_lvls[Obj_8])
#   
#   p_joined <- left_join(p1,p2,by = "F")
#   p_joined <- left_join(p_joined, p3, by = "F")
#   p_joined <- left_join(p_joined, p4, by = "F")
#   p_joined <- left_join(p_joined, p5, by = "F")
#   p_joined <- left_join(p_joined, p6, by = "F")
#   p_joined <- left_join(p_joined, p7, by = "F")
#   p_joined <- left_join(p_joined, p8, by = "F")
#   
#   View(p_joined)
#   p3 <- ggplot()+
#     geom_line(aes(x = p1$F, y = p1$speed_SGF), color = "red")+
#     geom_line(aes(x = p2$F, y = p2$speed_SGF), color = "blue")+
#     labs(x = "Frame",y = "speed (mps)")+
#     scale_colour_manual("", breaks = c("lead", "following"), values = c("red", "blue"))+
#     scale_y_continuous(limits = c(0,15))
# }

# Following Frame by Frame
# Traj_Obj_111x_FBF <- Traj_Obj_111x_clipped2 %>%
#   ungroup()
# 
# Traj_Obj_111x_FBF$Obj_ID <- as.character(Traj_Obj_111x_FBF$Obj_ID)
# 
# Traj_Obj_111x_FBF <- Traj_Obj_111x_FBF %>% 
#   group_by(F) %>% 
#   summarize(count <- n(), 
#             Obj_1 = Obj_ID[1],
#             Obj_2 = Obj_ID[2],
#             Obj_3 = Obj_ID[3],
#             Obj_4 = Obj_ID[4],
#             Obj_5 = Obj_ID[5],
#             Obj_6 = Obj_ID[6],
#             Obj_7 = Obj_ID[7],
#             Obj_8 = Obj_ID[8])
# 
# 
# 
#  Traj_Obj_111x_FBF <- Traj_Obj_111x_FBF %>%
#    mutate(X_Obj_1 = NA)
#  Traj_Obj_111x_FBF <- Traj_Obj_111x_FBF %>%
#    mutate(X_Obj_2 = NA)
#  Traj_Obj_111x_FBF <- Traj_Obj_111x_FBF %>%
#    mutate(X_Obj_3 = NA)
#  Traj_Obj_111x_FBF <- Traj_Obj_111x_FBF %>%
#    mutate(X_Obj_4 = NA)
#  Traj_Obj_111x_FBF <- Traj_Obj_111x_FBF %>%
#    mutate(X_Obj_5 = NA)
#  Traj_Obj_111x_FBF <- Traj_Obj_111x_FBF %>%
#    mutate(X_Obj_6 = NA)
#  Traj_Obj_111x_FBF <- Traj_Obj_111x_FBF %>%
#    mutate(X_Obj_7 = NA)
#  Traj_Obj_111x_FBF <- Traj_Obj_111x_FBF %>%
#    mutate(X_Obj_8 = NA)
#  
#  Traj_Obj_111x_FBF <- Traj_Obj_111x_FBF %>%
#    mutate(Y_Obj_1 = NA)
#  Traj_Obj_111x_FBF <- Traj_Obj_111x_FBF %>%
#    mutate(Y_Obj_2 = NA)
#  Traj_Obj_111x_FBF <- Traj_Obj_111x_FBF %>%
#    mutate(Y_Obj_3 = NA)
#  Traj_Obj_111x_FBF <- Traj_Obj_111x_FBF %>%
#    mutate(Y_Obj_4 = NA)
#  Traj_Obj_111x_FBF <- Traj_Obj_111x_FBF %>%
#    mutate(Y_Obj_5 = NA)
#  Traj_Obj_111x_FBF <- Traj_Obj_111x_FBF %>%
#    mutate(Y_Obj_6 = NA)
#  Traj_Obj_111x_FBF <- Traj_Obj_111x_FBF %>%
#    mutate(Y_Obj_7 = NA)
#  Traj_Obj_111x_FBF <- Traj_Obj_111x_FBF %>%
#    mutate(Y_Obj_8 = NA)
#  
# for (i in 1:length(Traj_Obj_111x_FBF$F)) {
#   Traj_Obj_111x_FBF$X_Obj_1[i] <-  Traj_Obj_111x_clipped2$X[Traj_Obj_111x_clipped2$Obj_ID == Traj_Obj_111x_FBF$Obj_1[i]&
#                                                    Traj_Obj_111x_clipped2$F == Traj_Obj_111x_FBF$F[i]]
#   Traj_Obj_111x_FBF$X_Obj_2[i] <-  Traj_Obj_111x_clipped2$X[Traj_Obj_111x_clipped2$Obj_ID == Traj_Obj_111x_FBF$Obj_2[i]&
#                                                               Traj_Obj_111x_clipped2$F == Traj_Obj_111x_FBF$F[i]]
#   Traj_Obj_111x_FBF$X_Obj_3[i] <-  Traj_Obj_111x_clipped2$X[Traj_Obj_111x_clipped2$Obj_ID == Traj_Obj_111x_FBF$Obj_3[i]&
#                                                               Traj_Obj_111x_clipped2$F == Traj_Obj_111x_FBF$F[i]]
#   Traj_Obj_111x_FBF$X_Obj_4[i] <-  Traj_Obj_111x_clipped2$X[Traj_Obj_111x_clipped2$Obj_ID == Traj_Obj_111x_FBF$Obj_4[i]&
#                                                               Traj_Obj_111x_clipped2$F == Traj_Obj_111x_FBF$F[i]]
#   Traj_Obj_111x_FBF$X_Obj_5[i] <-  Traj_Obj_111x_clipped2$X[Traj_Obj_111x_clipped2$Obj_ID == Traj_Obj_111x_FBF$Obj_5[i]&
#                                                               Traj_Obj_111x_clipped2$F == Traj_Obj_111x_FBF$F[i]]
#   Traj_Obj_111x_FBF$X_Obj_6[i] <-  Traj_Obj_111x_clipped2$X[Traj_Obj_111x_clipped2$Obj_ID == Traj_Obj_111x_FBF$Obj_6[i]&
#                                                               Traj_Obj_111x_clipped2$F == Traj_Obj_111x_FBF$F[i]]
#   Traj_Obj_111x_FBF$X_Obj_7[i] <-  Traj_Obj_111x_clipped2$X[Traj_Obj_111x_clipped2$Obj_ID == Traj_Obj_111x_FBF$Obj_7[i]&
#                                                               Traj_Obj_111x_clipped2$F == Traj_Obj_111x_FBF$F[i]]
#   Traj_Obj_111x_FBF$X_Obj_8[i] <-  Traj_Obj_111x_clipped2$X[Traj_Obj_111x_clipped2$Obj_ID == Traj_Obj_111x_FBF$Obj_8[i]&
#                                                               Traj_Obj_111x_clipped2$F == Traj_Obj_111x_FBF$F[i]]
#  
#   Traj_Obj_111x_FBF$Y_Obj_1[i] <-  Traj_Obj_111x_clipped2$Y[Traj_Obj_111x_clipped2$Obj_ID == Traj_Obj_111x_FBF$Obj_1[i]&
#                                                               Traj_Obj_111x_clipped2$F == Traj_Obj_111x_FBF$F[i]]
#   Traj_Obj_111x_FBF$Y_Obj_2[i] <-  Traj_Obj_111x_clipped2$Y[Traj_Obj_111x_clipped2$Obj_ID == Traj_Obj_111x_FBF$Obj_2[i]&
#                                                               Traj_Obj_111x_clipped2$F == Traj_Obj_111x_FBF$F[i]]
#   Traj_Obj_111x_FBF$Y_Obj_3[i] <-  Traj_Obj_111x_clipped2$Y[Traj_Obj_111x_clipped2$Obj_ID == Traj_Obj_111x_FBF$Obj_3[i]&
#                                                               Traj_Obj_111x_clipped2$F == Traj_Obj_111x_FBF$F[i]]
#   Traj_Obj_111x_FBF$Y_Obj_4[i] <-  Traj_Obj_111x_clipped2$Y[Traj_Obj_111x_clipped2$Obj_ID == Traj_Obj_111x_FBF$Obj_4[i]&
#                                                               Traj_Obj_111x_clipped2$F == Traj_Obj_111x_FBF$F[i]]
#   Traj_Obj_111x_FBF$Y_Obj_5[i] <-  Traj_Obj_111x_clipped2$Y[Traj_Obj_111x_clipped2$Obj_ID == Traj_Obj_111x_FBF$Obj_5[i]&
#                                                               Traj_Obj_111x_clipped2$F == Traj_Obj_111x_FBF$F[i]]
#   Traj_Obj_111x_FBF$Y_Obj_6[i] <-  Traj_Obj_111x_clipped2$Y[Traj_Obj_111x_clipped2$Obj_ID == Traj_Obj_111x_FBF$Obj_6[i]&
#                                                               Traj_Obj_111x_clipped2$F == Traj_Obj_111x_FBF$F[i]]
#   Traj_Obj_111x_FBF$Y_Obj_7[i] <-  Traj_Obj_111x_clipped2$Y[Traj_Obj_111x_clipped2$Obj_ID == Traj_Obj_111x_FBF$Obj_7[i]&
#                                                               Traj_Obj_111x_clipped2$F == Traj_Obj_111x_FBF$F[i]]
#   Traj_Obj_111x_FBF$Y_Obj_8[i] <-  Traj_Obj_111x_clipped2$Y[Traj_Obj_111x_clipped2$Obj_ID == Traj_Obj_111x_FBF$Obj_8[i]&
#                                                               Traj_Obj_111x_clipped2$F == Traj_Obj_111x_FBF$F[i]]
#   }
# 
#  
#  Traj_Obj_111x_FBF <- Traj_Obj_111x_FBF %>% 
#    mutate(Eucl_dist_Obj_1_to_obj_2 = sqrt(((X_Obj_1-X_Obj_2)^2)+((Y_Obj_1-Y_Obj_2)^2)),
#           Eucl_dist_Obj_1_to_obj_3 = sqrt(((X_Obj_1-X_Obj_3)^2)+((Y_Obj_1-Y_Obj_3)^2)),
#           Eucl_dist_Obj_1_to_obj_4 = sqrt(((X_Obj_1-X_Obj_4)^2)+((Y_Obj_1-Y_Obj_4)^2)),
#           Eucl_dist_Obj_1_to_obj_5 = sqrt(((X_Obj_1-X_Obj_5)^2)+((Y_Obj_1-Y_Obj_5)^2)),
#           Eucl_dist_Obj_1_to_obj_6 = sqrt(((X_Obj_1-X_Obj_6)^2)+((Y_Obj_1-Y_Obj_6)^2)),
#           Eucl_dist_Obj_1_to_obj_7 = sqrt(((X_Obj_1-X_Obj_7)^2)+((Y_Obj_1-Y_Obj_7)^2)),
#           Eucl_dist_Obj_1_to_obj_8 = sqrt(((X_Obj_1-X_Obj_8)^2)+((Y_Obj_1-Y_Obj_8)^2)),
#           Eucl_dist_Obj_2_to_obj_3 = sqrt(((X_Obj_2-X_Obj_3)^2)+((Y_Obj_2-Y_Obj_3)^2)),
#           Eucl_dist_Obj_2_to_obj_4 = sqrt(((X_Obj_2-X_Obj_4)^2)+((Y_Obj_2-Y_Obj_4)^2)),
#           Eucl_dist_Obj_2_to_obj_5 = sqrt(((X_Obj_2-X_Obj_5)^2)+((Y_Obj_2-Y_Obj_5)^2)),
#           Eucl_dist_Obj_2_to_obj_6 = sqrt(((X_Obj_2-X_Obj_6)^2)+((Y_Obj_2-Y_Obj_6)^2)),
#           Eucl_dist_Obj_2_to_obj_7 = sqrt(((X_Obj_2-X_Obj_7)^2)+((Y_Obj_2-Y_Obj_7)^2)),
#           Eucl_dist_Obj_2_to_obj_8 = sqrt(((X_Obj_2-X_Obj_8)^2)+((Y_Obj_2-Y_Obj_8)^2)),
#           Eucl_dist_Obj_3_to_obj_4 = sqrt(((X_Obj_3-X_Obj_4)^2)+((Y_Obj_3-Y_Obj_4)^2)),
#           Eucl_dist_Obj_3_to_obj_5 = sqrt(((X_Obj_3-X_Obj_5)^2)+((Y_Obj_3-Y_Obj_5)^2)),
#           Eucl_dist_Obj_3_to_obj_6 = sqrt(((X_Obj_3-X_Obj_6)^2)+((Y_Obj_3-Y_Obj_6)^2)),
#           Eucl_dist_Obj_3_to_obj_7 = sqrt(((X_Obj_3-X_Obj_7)^2)+((Y_Obj_3-Y_Obj_7)^2)),
#           Eucl_dist_Obj_3_to_obj_8 = sqrt(((X_Obj_3-X_Obj_8)^2)+((Y_Obj_3-Y_Obj_8)^2)),
#           Eucl_dist_Obj_4_to_obj_5 = sqrt(((X_Obj_4-X_Obj_5)^2)+((Y_Obj_4-Y_Obj_5)^2)),
#           Eucl_dist_Obj_4_to_obj_6 = sqrt(((X_Obj_4-X_Obj_6)^2)+((Y_Obj_4-Y_Obj_6)^2)),
#           Eucl_dist_Obj_4_to_obj_7 = sqrt(((X_Obj_4-X_Obj_7)^2)+((Y_Obj_4-Y_Obj_7)^2)),
#           Eucl_dist_Obj_4_to_obj_8 = sqrt(((X_Obj_4-X_Obj_8)^2)+((Y_Obj_4-Y_Obj_8)^2)),
#           Eucl_dist_Obj_5_to_obj_6 = sqrt(((X_Obj_5-X_Obj_6)^2)+((Y_Obj_5-Y_Obj_6)^2)),
#           Eucl_dist_Obj_5_to_obj_7 = sqrt(((X_Obj_5-X_Obj_7)^2)+((Y_Obj_5-Y_Obj_7)^2)),
#           Eucl_dist_Obj_5_to_obj_8 = sqrt(((X_Obj_5-X_Obj_8)^2)+((Y_Obj_5-Y_Obj_8)^2)),
#           Eucl_dist_Obj_6_to_obj_7 = sqrt(((X_Obj_6-X_Obj_7)^2)+((Y_Obj_6-Y_Obj_7)^2)),
#           Eucl_dist_Obj_6_to_obj_8 = sqrt(((X_Obj_6-X_Obj_8)^2)+((Y_Obj_6-Y_Obj_8)^2)),
#           Eucl_dist_Obj_7_to_obj_8 = sqrt(((X_Obj_7-X_Obj_8)^2)+((Y_Obj_7-Y_Obj_8)^2)),
#           
#           Long_dist_Obj_1_to_obj_2 = Y_Obj_1-Y_Obj_2,
#           Long_dist_Obj_1_to_obj_3 = Y_Obj_1-Y_Obj_3,
#           Long_dist_Obj_1_to_obj_4 = Y_Obj_1-Y_Obj_4,
#           Long_dist_Obj_1_to_obj_5 = Y_Obj_1-Y_Obj_5,
#           Long_dist_Obj_1_to_obj_6 = Y_Obj_1-Y_Obj_6,
#           Long_dist_Obj_1_to_obj_7 = Y_Obj_1-Y_Obj_7,
#           Long_dist_Obj_1_to_obj_8 = Y_Obj_1-Y_Obj_8,
#           Long_dist_Obj_2_to_obj_3 = Y_Obj_2-Y_Obj_3,
#           Long_dist_Obj_2_to_obj_4 = Y_Obj_2-Y_Obj_4,
#           Long_dist_Obj_2_to_obj_5 = Y_Obj_2-Y_Obj_5,
#           Long_dist_Obj_2_to_obj_6 = Y_Obj_2-Y_Obj_6,
#           Long_dist_Obj_2_to_obj_7 = Y_Obj_2-Y_Obj_7,
#           Long_dist_Obj_2_to_obj_8 = Y_Obj_2-Y_Obj_8,
#           Long_dist_Obj_3_to_obj_4 = Y_Obj_3-Y_Obj_4,
#           Long_dist_Obj_3_to_obj_5 = Y_Obj_3-Y_Obj_5,
#           Long_dist_Obj_3_to_obj_6 = Y_Obj_3-Y_Obj_6,
#           Long_dist_Obj_3_to_obj_7 = Y_Obj_3-Y_Obj_7,
#           Long_dist_Obj_3_to_obj_8 = Y_Obj_3-Y_Obj_8,
#           Long_dist_Obj_4_to_obj_5 = Y_Obj_4-Y_Obj_5,
#           Long_dist_Obj_4_to_obj_6 = Y_Obj_4-Y_Obj_6,
#           Long_dist_Obj_4_to_obj_7 = Y_Obj_4-Y_Obj_7,
#           Long_dist_Obj_4_to_obj_8 = Y_Obj_4-Y_Obj_8,
#           Long_dist_Obj_5_to_obj_6 = Y_Obj_5-Y_Obj_6,
#           Long_dist_Obj_5_to_obj_7 = Y_Obj_5-Y_Obj_7,
#           Long_dist_Obj_5_to_obj_8 = Y_Obj_5-Y_Obj_8,
#           Long_dist_Obj_6_to_obj_7 = Y_Obj_6-Y_Obj_7,
#           Long_dist_Obj_6_to_obj_8 = Y_Obj_6-Y_Obj_8,
#           Long_dist_Obj_7_to_obj_8 = Y_Obj_7-Y_Obj_8,
#           
#           Lat_dist_Obj_1_to_obj_2 = X_Obj_1-X_Obj_2,
#           Lat_dist_Obj_1_to_obj_3 = X_Obj_1-X_Obj_3,
#           Lat_dist_Obj_1_to_obj_4 = X_Obj_1-X_Obj_4,
#           Lat_dist_Obj_1_to_obj_5 = X_Obj_1-X_Obj_5,
#           Lat_dist_Obj_1_to_obj_6 = X_Obj_1-X_Obj_6,
#           Lat_dist_Obj_1_to_obj_7 = X_Obj_1-X_Obj_7,
#           Lat_dist_Obj_1_to_obj_8 = X_Obj_1-X_Obj_8,
#           Lat_dist_Obj_2_to_obj_3 = X_Obj_2-X_Obj_3,
#           Lat_dist_Obj_2_to_obj_4 = X_Obj_2-X_Obj_4,
#           Lat_dist_Obj_2_to_obj_5 = X_Obj_2-X_Obj_5,
#           Lat_dist_Obj_2_to_obj_6 = X_Obj_2-X_Obj_6,
#           Lat_dist_Obj_2_to_obj_7 = X_Obj_2-X_Obj_7,
#           Lat_dist_Obj_2_to_obj_8 = X_Obj_2-X_Obj_8,
#           Lat_dist_Obj_3_to_obj_4 = X_Obj_3-X_Obj_4,
#           Lat_dist_Obj_3_to_obj_5 = X_Obj_3-X_Obj_5,
#           Lat_dist_Obj_3_to_obj_6 = X_Obj_3-X_Obj_6,
#           Lat_dist_Obj_3_to_obj_7 = X_Obj_3-X_Obj_7,
#           Lat_dist_Obj_3_to_obj_8 = X_Obj_3-X_Obj_8,
#           Lat_dist_Obj_4_to_obj_5 = X_Obj_4-X_Obj_5,
#           Lat_dist_Obj_4_to_obj_6 = X_Obj_4-X_Obj_6,
#           Lat_dist_Obj_4_to_obj_7 = X_Obj_4-X_Obj_7,
#           Lat_dist_Obj_4_to_obj_8 = X_Obj_4-X_Obj_8,
#           Lat_dist_Obj_5_to_obj_6 = X_Obj_5-X_Obj_6,
#           Lat_dist_Obj_5_to_obj_7 = X_Obj_5-X_Obj_7,
#           Lat_dist_Obj_5_to_obj_8 = X_Obj_5-X_Obj_8,
#           Lat_dist_Obj_6_to_obj_7 = X_Obj_6-X_Obj_7,
#           Lat_dist_Obj_6_to_obj_8 = X_Obj_6-X_Obj_8,
#           Lat_dist_Obj_7_to_obj_8 = X_Obj_7-X_Obj_8
#           )
#  
#  Traj_Obj_111x_FBF2 <- gather(Traj_Obj_111x_FBF, key = "measure_X", value = "Value", 3:length(Traj_Obj_111x_FBF))
#  
#  Traj_Obj_111x_Y <- Traj_Obj_111x_FBF2 %>% 
#    group_by(F) %>% 
#    dplyr::filter(measure_X == "Y_Obj_1" 
#                  | measure_X == "Y_Obj_2" |
#                    measure_X == "Y_Obj_3" | 
#                    measure_X == "Y_Obj_4" | 
#                    measure_X == "Y_Obj_5" | 
#                    measure_X == "Y_Obj_6" | 
#                    measure_X == "Y_Obj_7" | 
#                    measure_X == "Y_Obj_8")
#  
#  Traj_Obj_111x_X <- Traj_Obj_111x_FBF2 %>% 
#    group_by(F) %>% 
#    dplyr::filter(measure_X == "X_Obj_1" 
#                  | measure_X == "X_Obj_2" |
#                    measure_X == "X_Obj_3" | 
#                    measure_X == "X_Obj_4" | 
#                    measure_X == "X_Obj_5" | 
#                    measure_X == "X_Obj_6" | 
#                    measure_X == "X_Obj_7" | 
#                    measure_X == "X_Obj_8")
#  
#  Traj_Obj_111x_Obj_ID <- Traj_Obj_111x_FBF2 %>% 
#    group_by(F) %>% 
#    dplyr::filter(measure_X == "Obj_1" 
#                  | measure_X == "Obj_2" |
#                    measure_X == "Obj_3" | 
#                    measure_X == "Obj_4" | 
#                    measure_X == "Obj_5" | 
#                    measure_X == "Obj_6" | 
#                    measure_X == "Obj_7" | 
#                    measure_X == "Obj_8")
# 
#  
#  
#  
#    Traj_Obj_111x_Y <- Traj_Obj_111x_Y %>% 
#      group_by(F) %>% 
#      arrange(F, desc(Value))
#    names(Traj_Obj_111x_Y)[3]<-paste("Obj_1_8")
#    names(Traj_Obj_111x_Y)[4]<-paste("Y")
#    Traj_Obj_111x_Y$Obj_1_8 <- str_sub(Traj_Obj_111x_Y$Obj_1_8, 3,7)
#    
#    Traj_Obj_111x_X <- Traj_Obj_111x_X %>% 
#      group_by(F)%>% 
#      arrange(F, desc(Value))
#    names(Traj_Obj_111x_X)[3]<-paste("Obj_1_8")
#    names(Traj_Obj_111x_X)[4]<-paste("X")
#    Traj_Obj_111x_X$Obj_1_8 <- str_sub(Traj_Obj_111x_X$Obj_1_8, 3,7)
#    
#    Traj_Obj_111x_Obj_ID <- Traj_Obj_111x_Obj_ID %>% 
#      group_by(F)%>% 
#      arrange(F, desc(Value))
#    names(Traj_Obj_111x_Obj_ID)[3]<-paste("Obj_1_8")
#    names(Traj_Obj_111x_Obj_ID)[4]<-paste("Obj_ID")
#    
#    Traj_Obj_111x_FBF3 <- left_join(Traj_Obj_111x_Y , Traj_Obj_111x_X, by = c("F", "Obj_1_8"))
#    Traj_Obj_111x_FBF3 <- left_join(Traj_Obj_111x_FBF3, Traj_Obj_111x_Obj_ID, by = c("F", "Obj_1_8"))
#    Traj_Obj_111x_FBF3 <- Traj_Obj_111x_FBF3 %>% 
#      select(F, Obj_ID, X, Y)
#    
#    Traj_Obj_111x_FBF3 <- Traj_Obj_111x_FBF3[complete.cases(Traj_Obj_111x_FBF3), ]
#    
#    Traj_Obj_111x_FBF3$X <- as.numeric(Traj_Obj_111x_FBF3$X)
#    Traj_Obj_111x_FBF3$Y <- as.numeric(Traj_Obj_111x_FBF3$Y)
#    
#    
#    Traj_Obj_111x_FBF3 <- Traj_Obj_111x_FBF3 %>% 
#      group_by(F) %>% 
#      mutate(Euclidean_distance = sqrt((Y-lead(Y, default = NA))^2)+((X-lead(X, default = NA))^2),
#             Long_distace = Y-lead(Y, default = NA),
#             Lateral_distance = X-lead(X, default = NA))
#    
# Speed Density   
   
   
   # 111x
   
   Traj_Obj_111x_FBF4 <- Traj_Obj_111x_clipped2 %>% 
     group_by(F) %>% 
     arrange(F,desc(Y))
   
   Traj_Obj_111x_FBF4<- Traj_Obj_111x_FBF4 %>% 
     group_by(F) %>% 
     mutate(Euclidean_distance = sqrt((Y-lead(Y, default = NA))^2)+((X-lead(X, default = NA))^2),
            Long_distace = Y-lead(Y, default = NA),
            Lateral_distance = X-lead(X, default = NA))
      
   Traj_Obj_111x_Speed_Density <- subset(Traj_Obj_111x_FBF4,(Traj_Obj_111x_FBF4$Y < 80&Traj_Obj_111x_FBF4$Y > 20))
   
   Traj_Obj_111x_Speed_Density <- Traj_Obj_111x_FBF4 %>% 
     group_by(F) %>% 
     mutate(S = ceiling(F/450))
   
   Traj_Obj_111x_Speed_Density <- Traj_Obj_111x_Speed_Density %>% 
     group_by(S) %>% 
     summarize(count = n(), avg_speed = mean(speed_SGF), density = count/60)
   
   p1 <- ggplot(Traj_Obj_111x_Speed_Density, aes(x = density, y = avg_speed))+ geom_point(na.rm = TRUE)
   
   
   # 111x_dir2
   
   Traj_Obj_111x_FBF4_dir2 <- Traj_Obj_111x_clipped2_dir2 %>% 
     group_by(F) %>% 
     arrange(F,desc(Y))
   
   Traj_Obj_111x_FBF4_dir2<- Traj_Obj_111x_FBF4_dir2 %>% 
     group_by(F) %>% 
     mutate(Euclidean_distance = sqrt((Y-lead(Y, default = NA))^2)+((X-lead(X, default = NA))^2),
            Long_distace = Y-lead(Y, default = NA),
            Lateral_distance = X-lead(X, default = NA))
   
   Traj_Obj_111x_Speed_Density_dir2 <- subset(Traj_Obj_111x_FBF4_dir2,(Traj_Obj_111x_FBF4_dir2$Y < 80&Traj_Obj_111x_FBF4_dir2$Y > 20))
   
   Traj_Obj_111x_Speed_Density_dir2 <- Traj_Obj_111x_FBF4_dir2 %>% 
     group_by(F) %>% 
     mutate(S = ceiling(F/450))
   
   Traj_Obj_111x_Speed_Density_dir2 <- Traj_Obj_111x_Speed_Density_dir2 %>% 
     group_by(S) %>% 
     summarize(count = n(), avg_speed = mean(speed_SGF), density = count/60)
   
   p2 <- ggplot(Traj_Obj_111x_Speed_Density_dir2, aes(x = density, y = avg_speed))+ geom_point(na.rm = TRUE)
   
   
   # 112x
   
   Traj_Obj_112x_FBF4 <- Traj_Obj_112x_clipped2 %>% 
     group_by(F) %>% 
     arrange(F,desc(Y))
   
   Traj_Obj_112x_FBF4<- Traj_Obj_112x_FBF4 %>% 
     group_by(F) %>% 
     mutate(Euclidean_distance = sqrt((Y-lead(Y, default = NA))^2)+((X-lead(X, default = NA))^2),
            Long_distace = Y-lead(Y, default = NA),
            Lateral_distance = X-lead(X, default = NA))
   
   Traj_Obj_112x_Speed_Density <- subset(Traj_Obj_112x_FBF4,(Traj_Obj_112x_FBF4$Y < 80&Traj_Obj_112x_FBF4$Y > 20))
   
   Traj_Obj_112x_Speed_Density <- Traj_Obj_112x_FBF4 %>% 
     group_by(F) %>% 
     mutate(S = ceiling(F/450))
   
   Traj_Obj_112x_Speed_Density <- Traj_Obj_112x_Speed_Density %>% 
     group_by(S) %>% 
     summarize(count = n(), avg_speed = mean(speed_SGF), density = count/60)
   
   p3 <- ggplot(Traj_Obj_112x_Speed_Density, aes(x = density, y = avg_speed))+ geom_point(na.rm = TRUE)
   
   
   # 112x_dir2
   
   Traj_Obj_112x_FBF4_dir2 <- Traj_Obj_112x_clipped2_dir2 %>% 
     group_by(F) %>% 
     arrange(F,desc(Y))
   
   Traj_Obj_112x_FBF4_dir2<- Traj_Obj_112x_FBF4_dir2 %>% 
     group_by(F) %>% 
     mutate(Euclidean_distance = sqrt((Y-lead(Y, default = NA))^2)+((X-lead(X, default = NA))^2),
            Long_distace = Y-lead(Y, default = NA),
            Lateral_distance = X-lead(X, default = NA))
   
   Traj_Obj_112x_Speed_Density_dir2 <- subset(Traj_Obj_112x_FBF4_dir2,(Traj_Obj_112x_FBF4_dir2$Y < 80&Traj_Obj_112x_FBF4_dir2$Y > 20))
   
   Traj_Obj_112x_Speed_Density_dir2 <- Traj_Obj_112x_FBF4_dir2 %>% 
     group_by(F) %>% 
     mutate(S = ceiling(F/450))
   
   Traj_Obj_112x_Speed_Density_dir2 <- Traj_Obj_112x_Speed_Density_dir2 %>% 
     group_by(S) %>% 
     summarize(count = n(), avg_speed = mean(speed_SGF), density = count/60)
   
   p4 <- ggplot(Traj_Obj_112x_Speed_Density_dir2, aes(x = density, y = avg_speed))+ geom_point(na.rm = TRUE)
   
   
   
   
   # 211x
   
   Traj_Obj_211x_FBF4 <- Traj_Obj_211x_clipped2 %>% 
     group_by(F) %>% 
     arrange(F,desc(Y))
   
   Traj_Obj_211x_FBF4<- Traj_Obj_211x_FBF4 %>% 
     group_by(F) %>% 
     mutate(Euclidean_distance = sqrt((Y-lead(Y, default = NA))^2)+((X-lead(X, default = NA))^2),
            Long_distace = Y-lead(Y, default = NA),
            Lateral_distance = X-lead(X, default = NA))
   
   Traj_Obj_211x_Speed_Density <- subset(Traj_Obj_211x_FBF4,(Traj_Obj_211x_FBF4$Y < 80&Traj_Obj_211x_FBF4$Y > 20))
   
   Traj_Obj_211x_Speed_Density <- Traj_Obj_211x_FBF4 %>% 
     group_by(F) %>% 
     mutate(S = ceiling(F/450))
   
   Traj_Obj_211x_Speed_Density <- Traj_Obj_211x_Speed_Density %>% 
     group_by(S) %>% 
     summarize(count = n(), avg_speed = mean(speed_SGF), density = count/60)
   
   p5 <- ggplot(Traj_Obj_211x_Speed_Density, aes(x = density, y = avg_speed))+ geom_point(na.rm = TRUE)
   
   
   # 211x_dir2
   
   Traj_Obj_211x_FBF4_dir2 <- Traj_Obj_211x_clipped2_dir2 %>% 
     group_by(F) %>% 
     arrange(F,desc(Y))
   
   Traj_Obj_211x_FBF4_dir2<- Traj_Obj_211x_FBF4_dir2 %>% 
     group_by(F) %>% 
     mutate(Euclidean_distance = sqrt((Y-lead(Y, default = NA))^2)+((X-lead(X, default = NA))^2),
            Long_distace = Y-lead(Y, default = NA),
            Lateral_distance = X-lead(X, default = NA))
   
   Traj_Obj_211x_Speed_Density_dir2 <- subset(Traj_Obj_211x_FBF4_dir2,(Traj_Obj_211x_FBF4_dir2$Y < 80&Traj_Obj_211x_FBF4_dir2$Y > 20))
   
   Traj_Obj_211x_Speed_Density_dir2 <- Traj_Obj_211x_FBF4_dir2 %>% 
     group_by(F) %>% 
     mutate(S = ceiling(F/450))
   
   Traj_Obj_211x_Speed_Density_dir2 <- Traj_Obj_211x_Speed_Density_dir2 %>% 
     group_by(S) %>% 
     summarize(count = n(), avg_speed = mean(speed_SGF), density = count/60)
   
   p6 <- ggplot(Traj_Obj_211x_Speed_Density_dir2, aes(x = density, y = avg_speed))+ geom_point(na.rm = TRUE)
   
   
   # 212x
   
   Traj_Obj_212x_FBF4 <- Traj_Obj_212x_clipped2 %>% 
     group_by(F) %>% 
     arrange(F,desc(Y))
   
   Traj_Obj_212x_FBF4<- Traj_Obj_212x_FBF4 %>% 
     group_by(F) %>% 
     mutate(Euclidean_distance = sqrt((Y-lead(Y, default = NA))^2)+((X-lead(X, default = NA))^2),
            Long_distace = Y-lead(Y, default = NA),
            Lateral_distance = X-lead(X, default = NA))
   
   Traj_Obj_212x_Speed_Density <- subset(Traj_Obj_212x_FBF4,(Traj_Obj_212x_FBF4$Y < 80&Traj_Obj_212x_FBF4$Y > 20))
   
   Traj_Obj_212x_Speed_Density <- Traj_Obj_212x_FBF4 %>% 
     group_by(F) %>% 
     mutate(S = ceiling(F/450))
   
   Traj_Obj_212x_Speed_Density <- Traj_Obj_212x_Speed_Density %>% 
     group_by(S) %>% 
     summarize(count = n(), avg_speed = mean(speed_SGF), density = count/60)
   
   p7 <- ggplot(Traj_Obj_212x_Speed_Density, aes(x = density, y = avg_speed))+ geom_point(na.rm = TRUE)
   
   
   # 212x_dir2
   
   Traj_Obj_212x_FBF4_dir2 <- Traj_Obj_212x_clipped2_dir2 %>% 
     group_by(F) %>% 
     arrange(F,desc(Y))
   
   Traj_Obj_212x_FBF4_dir2<- Traj_Obj_212x_FBF4_dir2 %>% 
     group_by(F) %>% 
     mutate(Euclidean_distance = sqrt((Y-lead(Y, default = NA))^2)+((X-lead(X, default = NA))^2),
            Long_distace = Y-lead(Y, default = NA),
            Lateral_distance = X-lead(X, default = NA))
   
   Traj_Obj_212x_Speed_Density_dir2 <- subset(Traj_Obj_212x_FBF4_dir2,(Traj_Obj_212x_FBF4_dir2$Y < 80&Traj_Obj_212x_FBF4_dir2$Y > 20))
   
   Traj_Obj_212x_Speed_Density_dir2 <- Traj_Obj_212x_FBF4_dir2 %>% 
     group_by(F) %>% 
     mutate(S = ceiling(F/450))
   
   Traj_Obj_212x_Speed_Density_dir2 <- Traj_Obj_212x_Speed_Density_dir2 %>% 
     group_by(S) %>% 
     summarize(count = n(), avg_speed = mean(speed_SGF), density = count/60)
   
   p8 <- ggplot(Traj_Obj_212x_Speed_Density_dir2, aes(x = density, y = avg_speed))+ geom_point(na.rm = TRUE)
   
   
   
   
   p9 <- ggplot()+
     geom_point(data = Traj_Obj_111x_Speed_Density, aes(x = density, y = avg_speed), na.rm = TRUE)+
     geom_point(data =Traj_Obj_111x_Speed_Density_dir2, aes(x = density, y = avg_speed), na.rm = TRUE)+
     geom_point(data =Traj_Obj_112x_Speed_Density, aes(x = density, y = avg_speed), na.rm = TRUE)+
     geom_point(data =Traj_Obj_112x_Speed_Density_dir2, aes(x = density, y = avg_speed), na.rm = TRUE)+
     geom_point(data =Traj_Obj_211x_Speed_Density, aes(x = density, y = avg_speed), na.rm = TRUE)+
     geom_point(data =Traj_Obj_211x_Speed_Density_dir2, aes(x = density, y = avg_speed), na.rm = TRUE)+
     geom_point(data =Traj_Obj_212x_Speed_Density, aes(x = density, y = avg_speed), na.rm = TRUE)+
     geom_point(data =Traj_Obj_212x_Speed_Density_dir2, aes(x = density, y = avg_speed), na.rm = TRUE)
   
   p9
   
   ggplot(Traj_Obj_111x_Speed_Density)+geom_histogram(aes(x = avg_speed))
   ggplot(Traj_Obj_111x_Speed_Density)+geom_histogram(aes(x = density))
  
  ggplot(Traj_Obj_111x_FBF4,aes(x = Traj_Obj_111x_FBF4$speed_SGF, y = Traj_Obj_111x_FBF4$Long_distace)) + geom_point() 
   
   

   
   
  
 #     mutate(Obj_ID = if (measure_X == "Y_Obj_1") {
 #       Traj_Obj_111x_FBF_Obj_ID <- Traj_Obj_111x_FBF %>% 
 #         dplyr::filter(Traj_Obj_111x_FBF$F == Traj_Obj_111x_FBF2$F[i]) %>% 
 #         select(Obj_1) 
 #       Traj_Obj_111x_FBF_Obj_ID$Obj_1
 #     }else if (measure_X == "Y_Obj_2") {
 #       Traj_Obj_111x_FBF_Obj_ID <- Traj_Obj_111x_FBF %>% 
 #         dplyr::filter(Traj_Obj_111x_FBF$F == Traj_Obj_111x_FBF2$F[i]) %>% 
 #         select(Obj_2) 
 #       Traj_Obj_111x_FBF_Obj_ID$Obj_2
 #     }else if (measure_X == "Y_Obj_3") {
 #       Traj_Obj_111x_FBF_Obj_ID <- Traj_Obj_111x_FBF %>% 
 #         dplyr::filter(Traj_Obj_111x_FBF$F == Traj_Obj_111x_FBF2$F[i]) %>% 
 #         select(Obj_3) 
 #       Traj_Obj_111x_FBF_Obj_ID$Obj_3
 #     }else if (measure_X == "Y_Obj_4") {
 #       Traj_Obj_111x_FBF_Obj_ID <- Traj_Obj_111x_FBF %>% 
 #         dplyr::filter(Traj_Obj_111x_FBF$F == Traj_Obj_111x_FBF2$F[i]) %>% 
 #         select(Obj_4) 
 #       Traj_Obj_111x_FBF_Obj_ID$Obj_4
 #     }else if (measure_X == "Y_Obj_5") {
 #       Traj_Obj_111x_FBF_Obj_ID <- Traj_Obj_111x_FBF %>% 
 #         dplyr::filter(Traj_Obj_111x_FBF$F == Traj_Obj_111x_FBF2$F[i]) %>% 
 #         select(Obj_5) 
 #       Traj_Obj_111x_FBF_Obj_ID$Obj_5
 #     }else if (measure_X == "Y_Obj_6") {
 #       Traj_Obj_111x_FBF_Obj_ID <- Traj_Obj_111x_FBF %>% 
 #         dplyr::filter(Traj_Obj_111x_FBF$F == Traj_Obj_111x_FBF2$F[i]) %>% 
 #         select(Obj_6) 
 #       Traj_Obj_111x_FBF_Obj_ID$Obj_6
 #     }else if (measure_X == "Y_Obj_7") {
 #       Traj_Obj_111x_FBF_Obj_ID <- Traj_Obj_111x_FBF %>% 
 #         dplyr::filter(Traj_Obj_111x_FBF$F == Traj_Obj_111x_FBF2$F[i]) %>% 
 #         select(Obj_7) 
 #       Traj_Obj_111x_FBF_Obj_ID$Obj_7
 #     }else if (measure_X == "Y_Obj_8") {
 #       Traj_Obj_111x_FBF_Obj_ID <- Traj_Obj_111x_FBF %>% 
 #         dplyr::filter(Traj_Obj_111x_FBF$F == Traj_Obj_111x_FBF2$F[i]) %>% 
 #         select(Obj_8) 
 #       Traj_Obj_111x_FBF_Obj_ID$Obj_8
 #     })
 # }

 
#  Traj_Obj_111x_FBF_Obj_ID <- Traj_Obj_111x_FBF %>% 
#    group_by(F) %>% 
#    summarize(Obj_1 = Traj_Obj_111x_FBF$Obj_1[1], 
#              Obj_2 = Traj_Obj_111x_FBF$Obj_2[1],
#              Obj_3 = Traj_Obj_111x_FBF$Obj_3[1],
#              Obj_4 = Traj_Obj_111x_FBF$Obj_4[1],
#              Obj_5 = Traj_Obj_111x_FBF$Obj_5[1],
#              Obj_6 = Traj_Obj_111x_FBF$Obj_6[1],
#              Obj_7 = Traj_Obj_111x_FBF$Obj_7[1],
#              Obj_8 = Traj_Obj_111x_FBF$Obj_8[1])
#  
#  
#  
#  
#  
#  
#  
#  
#  
#  
#  
#  
#  
#  
#  Traj_Obj_111x_FBF %>% 
#    ggplot()+
#    geom_point(aes(x = F, y = dist_Obj_1_to_obj_2), col = "red", na.rm = TRUE)+
#    geom_point(aes(x = F, y = dist_Obj_2_to_obj_3), col = "blue", na.rm = TRUE)+
#    geom_point(aes(x = F, y = dist_Obj_1_to_obj_3), col = "green", na.rm = TRUE)+
#    geom_point(aes(x = F, y = dist_Obj_3_to_obj_4), col = "yellow", na.rm = TRUE)+
#    geom_point(aes(x = F, y = dist_Obj_2_to_obj_4), col = "lightblue", na.rm = TRUE)+
#    geom_point(aes(x = F, y = dist_Obj_1_to_obj_4), col = "darkgreen", na.rm = TRUE)
#   
# Traj_Obj_111x_clipped2 %>% 
#   ungroup() %>% 
#   dplyr::filter(Obj_ID == "1111_1") %>% 
#   dplyr::filter(F == 8) %>% 
#   select(X)
# Traj_Obj_111x_clipped2$X[Traj_Obj_111x_clipped2$Obj_ID == Traj_Obj_111x_FBF$Obj_1[1]&Traj_Obj_111x_clipped2$F == Traj_Obj_111x_FBF$F[1]]
# 
# # Following Speed Profiles 
# 
# require("intervals")
# A=rbind(A1=c(1,7), A2=c(2,5), A3=c(40, 160))
# B=rbind(B1=c(2,3), B2=c(2,20))
# Aint<-Intervals(A)
# Bint<-Intervals(B)
# interval_overlap(Aint, Aint)
# 
# 
# for (i in 1:length(following_111x$comp)) {
#   filename1 <- paste("plots/Following/fol_speed/111x/fol_speed",following_111x$comp[i],sep = "_")
#   filename2 <- paste(filename1, following_111x$lead[i], sep = "_")
#   filename3 <- paste(filename2, following_111x$follow[i], sep = "_")
#   fullname <- paste(filename3, ".jpg",sep = "")
#   p1 <- Traj_Obj_111x_clipped2 %>% 
#     dplyr::filter(comp == following_111x$comp[i]) %>% 
#     dplyr::filter(Obj == following_111x$lead[i])
#   p2 <- Traj_Obj_111x_clipped2 %>% 
#     dplyr::filter(comp == following_111x$comp[i]) %>% 
#     dplyr::filter(Obj == following_111x$follow[i])
#   p3 <- ggplot()+
#     geom_line(aes(x = p1$F, y = p1$speed_SGF), color = "red")+
#     geom_line(aes(x = p2$F, y = p2$speed_SGF), color = "blue")+
#     labs(x = "Frame",y = "speed (mps)")+
#     scale_colour_manual("", breaks = c("lead", "following"), values = c("red", "blue"))+
#     scale_y_continuous(limits = c(0,15))
#   ggsave(fullname, p3)
# }
# 
# for (i in 1:length(following_112x$comp)) {
#   filename1 <- paste("plots/Following/fol_speed/112x/fol_speed",following_112x$comp[i],sep = "_")
#   filename2 <- paste(filename1, following_112x$lead[i], sep = "_")
#   filename3 <- paste(filename2, following_112x$follow[i], sep = "_")
#   fullname <- paste(filename3, ".jpg",sep = "")
#   p1 <- Traj_Obj_112x_clipped2 %>% 
#     dplyr::filter(comp == following_112x$comp[i]) %>% 
#     dplyr::filter(Obj == following_112x$lead[i])
#   p2 <- Traj_Obj_112x_clipped2 %>% 
#     dplyr::filter(comp == following_112x$comp[i]) %>% 
#     dplyr::filter(Obj == following_112x$follow[i])
#   p3 <- ggplot()+
#     geom_line(aes(x = p1$F, y = p1$speed_SGF), color = "red")+
#     geom_line(aes(x = p2$F, y = p2$speed_SGF), color = "blue")+
#     labs(x = "Frame",y = "speed (mps)")+
#     scale_y_continuous(limits = c(0,15))
#   ggsave(fullname, p3)
# }
# 
# # Following Spacetime Diagrams

for (i in 1:length(following_111x$comp)) {
  filename1 <- paste("plots/Following/fol_STD/111x/fol_STD",following_111x$comp[i],sep = "_")
  filename2 <- paste(filename1, following_111x$lead[i], sep = "_")
  filename3 <- paste(filename2, following_111x$follow[i], sep = "_")
  fullname <- paste(filename3, ".jpg",sep = "")
  p1 <- Traj_Obj_111x_clipped2 %>%
    dplyr::filter(comp == following_111x$comp[i]) %>%
    dplyr::filter(Obj == following_111x$lead[i])
  p2 <- Traj_Obj_111x_clipped2 %>%
    dplyr::filter(comp == following_111x$comp[i]) %>%
    dplyr::filter(Obj == following_111x$follow[i])
  p3 <- ggplot()+
    geom_line(aes(x = p1$F, y = p1$Y))+
    geom_line(aes(x = p2$F, y = p2$Y))+
    xlab(label = "Time (frame)")+
    ylab(label = "Position (m)")+
    theme_classic()+
    theme(legend.position="none",
          axis.text=element_text(size=12),
          axis.title=element_text(size=14,face="bold"))
  ggsave(fullname, p3)
}
# 
# 
# for (i in 1:length(following_112x$comp)) {
#   filename1 <- paste("plots/Following/fol_STD/112x/fol_STD",following_112x$comp[i],sep = "_")
#   filename2 <- paste(filename1, following_112x$lead[i], sep = "_")
#   filename3 <- paste(filename2, following_112x$follow[i], sep = "_")
#   fullname <- paste(filename3, ".jpg",sep = "")
#   p1 <- Traj_Obj_112x_clipped2 %>% 
#     dplyr::filter(comp == following_112x$comp[i]) %>% 
#     dplyr::filter(Obj == following_112x$lead[i])
#   p2 <- Traj_Obj_112x_clipped2 %>% 
#     dplyr::filter(comp == following_112x$comp[i]) %>% 
#     dplyr::filter(Obj == following_112x$follow[i])
#   p3 <- ggplot()+
#     geom_line(aes(x = p1$F, y = p1$Y), color = "red")+
#     geom_line(aes(x = p2$F, y = p2$Y), color = "blue")+
#     labs(x = "time (frame)",y = "position (m)")
#   ggsave(fullname, p3)
# }
# 
# # Following Acceleration Profiles
# 
# 
# for (i in 1:length(following_111x$comp)) {
#   filename1 <- paste("plots/Following/fol_acc/111x/fol_acc",following_111x$comp[i],sep = "_")
#   filename2 <- paste(filename1, following_111x$lead[i], sep = "_")
#   filename3 <- paste(filename2, following_111x$follow[i], sep = "_")
#   fullname <- paste(filename3, ".jpg",sep = "")
#   p1 <- Traj_Obj_111x_clipped2 %>% 
#     dplyr::filter(comp == following_111x$comp[i]) %>% 
#     dplyr::filter(Obj == following_111x$lead[i])
#   p2 <- Traj_Obj_111x_clipped2 %>% 
#     dplyr::filter(comp == following_111x$comp[i]) %>% 
#     dplyr::filter(Obj == following_111x$follow[i])
#   p3 <- ggplot()+
#     geom_line(aes(x = p1$F, y = p1$acc_SGF), color = "red")+
#     geom_line(aes(x = p2$F, y = p2$acc_SGF), color = "blue")+
#     labs(x = "Frame",y = "acceleration (mps2)")+
#     scale_y_continuous(limits = c(-10,10))
#   
#   ggsave(fullname, p3)
# }
# 
# for (i in 1:length(following_112x$comp)) {
#   filename1 <- paste("plots/Following/fol_acc/112x/fol_acc",following_112x$comp[i],sep = "_")
#   filename2 <- paste(filename1, following_112x$lead[i], sep = "_")
#   filename3 <- paste(filename2, following_112x$follow[i], sep = "_")
#   fullname <- paste(filename3, ".jpg",sep = "")
#   p1 <- Traj_Obj_112x_clipped2 %>% 
#     dplyr::filter(comp == following_112x$comp[i]) %>% 
#     dplyr::filter(Obj == following_112x$lead[i])
#   p2 <- Traj_Obj_112x_clipped2 %>% 
#     dplyr::filter(comp == following_112x$comp[i]) %>% 
#     dplyr::filter(Obj == following_112x$follow[i])
#   p3 <- ggplot()+
#     geom_line(aes(x = p1$F, y = p1$acc_SGF), color = "red")+
#     geom_line(aes(x = p2$F, y = p2$acc_SGF), color = "blue")+
#     labs(x = "Frame",y = "acceleration (mps2)")+
#     scale_y_continuous(limits = c(-10,10))
#   
#   ggsave(fullname, p3)
# }
# 
# # Following Yaw Rate Profiles
# 
# for (i in 1:length(following_111x$comp)) {
#   filename1 <- paste("plots/Following/fol_yawRate/111x/fol_yawRate",following_111x$comp[i],sep = "_")
#   filename2 <- paste(filename1, following_111x$lead[i], sep = "_")
#   filename3 <- paste(filename2, following_111x$follow[i], sep = "_")
#   fullname <- paste(filename3, ".jpg",sep = "")
#   p1 <- Traj_Obj_111x_clipped2 %>% 
#     dplyr::filter(comp == following_111x$comp[i]) %>% 
#     dplyr::filter(Obj == following_111x$lead[i])
#   p2 <- Traj_Obj_111x_clipped2 %>% 
#     dplyr::filter(comp == following_111x$comp[i]) %>% 
#     dplyr::filter(Obj == following_111x$follow[i])
#   p3 <- ggplot()+
#     geom_line(aes(x = p1$F, y = p1$yawRate_SGF), color = "red")+
#     geom_line(aes(x = p2$F, y = p2$yawRate_SGF), color = "blue")+
#     labs(x = "Frame",y = "Yaw rate (rad/s)")
#   ggsave(fullname, p3)
# }
# 
# 
# for (i in 1:length(following_112x$comp)) {
#   filename1 <- paste("plots/Following/fol_yawRate/112x/fol_yawRate",following_112x$comp[i],sep = "_")
#   filename2 <- paste(filename1, following_112x$lead[i], sep = "_")
#   filename3 <- paste(filename2, following_112x$follow[i], sep = "_")
#   fullname <- paste(filename3, ".jpg",sep = "")
#   p1 <- Traj_Obj_112x_clipped2 %>% 
#     dplyr::filter(comp == following_112x$comp[i]) %>% 
#     dplyr::filter(Obj == following_112x$lead[i])
#   p2 <- Traj_Obj_112x_clipped2 %>% 
#     dplyr::filter(comp == following_112x$comp[i]) %>% 
#     dplyr::filter(Obj == following_112x$follow[i])
#   p3 <- ggplot()+
#     geom_line(aes(x = p1$F, y = p1$yawRate_SGF), color = "red")+
#     geom_line(aes(x = p2$F, y = p2$yawRate_SGF), color = "blue")+
#     labs(x = "Frame",y = "Yaw rate (rad/s)")
#   ggsave(fullname, p3)
# }
# 
# # Following Yaw Angle Profiles
# 
# for (i in 1:length(following_111x$comp)) {
#   filename1 <- paste("plots/Following/fol_yawAngle/111x/fol_yawAngle",following_111x$comp[i],sep = "_")
#   filename2 <- paste(filename1, following_111x$lead[i], sep = "_")
#   filename3 <- paste(filename2, following_111x$follow[i], sep = "_")
#   fullname <- paste(filename3, ".jpg",sep = "")
#   p1 <- Traj_Obj_111x_clipped2 %>% 
#     dplyr::filter(comp == following_111x$comp[i]) %>% 
#     dplyr::filter(Obj == following_111x$lead[i])
#   p2 <- Traj_Obj_111x_clipped2 %>% 
#     dplyr::filter(comp == following_111x$comp[i]) %>% 
#     dplyr::filter(Obj == following_111x$follow[i])
#   p3 <- ggplot()+
#     geom_line(aes(x = p1$F, y = p1$yawAngle_SGF), color = "red")+
#     geom_line(aes(x = p2$F, y = p2$yawAngle_SGF), color = "blue")+
#     labs(x = "Frame",y = "Yaw angle (rad)")
#   ggsave(fullname, p3)
# }
# 
# for (i in 1:length(following_112x$comp)) {
#   filename1 <- paste("plots/Following/fol_yawAngle/112x/fol_yawAngle",following_111x$comp[i],sep = "_")
#   filename2 <- paste(filename1, following_112x$lead[i], sep = "_")
#   filename3 <- paste(filename2, following_112x$follow[i], sep = "_")
#   fullname <- paste(filename3, ".jpg",sep = "")
#   p1 <- Traj_Obj_112x_clipped2 %>% 
#     dplyr::filter(comp == following_112x$comp[i]) %>% 
#     dplyr::filter(Obj == following_112x$lead[i])
#   p2 <- Traj_Obj_112x_clipped2 %>% 
#     dplyr::filter(comp == following_112x$comp[i]) %>% 
#     dplyr::filter(Obj == following_112x$follow[i])
#   p3 <- ggplot()+
#     geom_line(aes(x = p1$F, y = p1$yawAngle_SGF), color = "red")+
#     geom_line(aes(x = p2$F, y = p2$yawAngle_SGF), color = "blue")+
#     labs(x = "Frame",y = "Yaw angle (rad)")
#   ggsave(fullname, p3)
# }
