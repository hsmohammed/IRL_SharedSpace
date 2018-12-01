source("loadLibraries.R")


Traj_Obj_111x_clipped2 %>% 
  ggplot(aes(speed_SGF))+geom_histogram(col = "black", fill = "lightblue3")

ima_212<- readJPEG("Map/RB-1-1-world.jpg")

arrow1 <- arrow(angle = 30, length = unit(0.05, "inches"),ends = "last", type = "open")

for (i in 1:length(objects_1111$Obj)) {
  filename1 <- paste("plots/world_trajectory_overlay/1111",objects_1111$Obj[i],sep = "_")
  fullname <- paste(filename1, ".jpg",sep = "")
  p1 <- Traj_Obj_111x_clipped2[(Traj_Obj_111x_clipped2$comp == "1111"&Traj_Obj_111x_clipped2$Obj == objects_1111$Obj[i]),] %>% 
    ggplot(aes(X_SGF,Y_SGF, col = type, group = Obj))+
    annotation_custom(rasterGrob(ima_212, width = unit(1,"npc"), 
                                 height = unit(1,"npc")), 
                      0, 108, 0, 74)+
    geom_path(na.rm = TRUE, arrow = arrow1, size = 1) +
    scale_x_continuous(limits = c(0,108), expand = c(0,0))+
    scale_y_continuous(limits = c(0,93), expand = c(0,0))
  ggsave(filename = fullname,p1)
}

for (i in 1:length(objects_1112$Obj)) {
  filename1 <- paste("plots/world_trajectory_overlay/1112",objects_1112$Obj[i],sep = "_")
  fullname <- paste(filename1, ".jpg",sep = "")
  p1 <- Traj_Obj_111x_clipped2[(Traj_Obj_111x_clipped2$comp == "1112"&Traj_Obj_111x_clipped2$Obj == objects_1112$Obj[i]),] %>% 
    ggplot(aes(X_SGF,Y_SGF, col = type, group = Obj))+
    annotation_custom(rasterGrob(ima_212, width = unit(1,"npc"), 
                                 height = unit(1,"npc")), 
                      0, 108, 0, 74)+
    geom_path(na.rm = TRUE, arrow = arrow1, size = 1) +
    scale_x_continuous(limits = c(0,108), expand = c(0,0))+
    scale_y_continuous(limits = c(0,93), expand = c(0,0))
  ggsave(filename = fullname,p1)
}

for (i in 1:length(objects_1113$Obj)) {
  filename1 <- paste("plots/world_trajectory_overlay/1113",objects_1113$Obj[i],sep = "_")
  fullname <- paste(filename1, ".jpg",sep = "")
  p1 <- Traj_Obj_111x_clipped2[(Traj_Obj_111x_clipped2$comp == "1113"&Traj_Obj_111x_clipped2$Obj == objects_1113$Obj[i]),] %>% 
    ggplot(aes(X_SGF,Y_SGF, col = type, group = Obj))+
    annotation_custom(rasterGrob(ima_212, width = unit(1,"npc"), 
                                 height = unit(1,"npc")), 
                      0, 108, 0, 74)+
    geom_path(na.rm = TRUE, arrow = arrow1, size = 1) +
    scale_x_continuous(limits = c(0,108), expand = c(0,0))+
    scale_y_continuous(limits = c(0,93), expand = c(0,0))
  ggsave(filename = fullname,p1)
}

for (i in 1:length(objects_1114$Obj)) {
  filename1 <- paste("plots/world_trajectory_overlay/1114",objects_1114$Obj[i],sep = "_")
  fullname <- paste(filename1, ".jpg",sep = "")
  p1 <- Traj_Obj_111x_clipped2[(Traj_Obj_111x_clipped2$comp == "1114"&Traj_Obj_111x_clipped2$Obj == objects_1114$Obj[i]),] %>% 
    ggplot(aes(X_SGF,Y_SGF, col = type, group = Obj))+
    annotation_custom(rasterGrob(ima_212, width = unit(1,"npc"), 
                                 height = unit(1,"npc")), 
                      0, 108, 0, 74)+
    geom_path(na.rm = TRUE, arrow = arrow1, size = 1) +
    scale_x_continuous(limits = c(0,108), expand = c(0,0))+
    scale_y_continuous(limits = c(0,93), expand = c(0,0))
  ggsave(filename = fullname,p1)
}

for (i in 1:length(objects_1115$Obj)) {
  filename1 <- paste("plots/world_trajectory_overlay/1115",objects_1115$Obj[i],sep = "_")
  fullname <- paste(filename1, ".jpg",sep = "")
  p1 <- Traj_Obj_111x_clipped2[(Traj_Obj_111x_clipped2$comp == "1115"&Traj_Obj_111x_clipped2$Obj == objects_1115$Obj[i]),] %>% 
    ggplot(aes(X_SGF,Y_SGF, col = type, group = Obj))+
    annotation_custom(rasterGrob(ima_212, width = unit(1,"npc"), 
                                 height = unit(1,"npc")), 
                      0, 108, 0, 74)+
    geom_path(na.rm = TRUE, arrow = arrow1, size = 1) +
    scale_x_continuous(limits = c(0,108), expand = c(0,0))+
    scale_y_continuous(limits = c(0,93), expand = c(0,0))
  ggsave(filename = fullname,p1)
}

for (i in 1:length(objects_1116$Obj)) {
  filename1 <- paste("plots/world_trajectory_overlay/1116",objects_1116$Obj[i],sep = "_")
  fullname <- paste(filename1, ".jpg",sep = "")
  p1 <- Traj_Obj_111x_clipped2[(Traj_Obj_111x_clipped2$comp == "1116"&Traj_Obj_111x_clipped2$Obj == objects_1116$Obj[i]),] %>% 
    ggplot(aes(X_SGF,Y_SGF, col = type, group = Obj))+
    annotation_custom(rasterGrob(ima_212, width = unit(1,"npc"), 
                                 height = unit(1,"npc")), 
                      0, 108, 0, 74)+
    geom_path(na.rm = TRUE, arrow = arrow1, size = 1) +
    scale_x_continuous(limits = c(0,108), expand = c(0,0))+
    scale_y_continuous(limits = c(0,93), expand = c(0,0))
  ggsave(filename = fullname,p1)
}

for (i in 1:length(objects_1117$Obj)) {
  filename1 <- paste("plots/world_trajectory_overlay/1117",objects_1117$Obj[i],sep = "_")
  fullname <- paste(filename1, ".jpg",sep = "")
  p1 <- Traj_Obj_111x_clipped2[(Traj_Obj_111x_clipped2$comp == "1117"&Traj_Obj_111x_clipped2$Obj == objects_1117$Obj[i]),] %>% 
    ggplot(aes(X_SGF,Y_SGF, col = type, group = Obj))+
    annotation_custom(rasterGrob(ima_212, width = unit(1,"npc"), 
                                 height = unit(1,"npc")), 
                      0, 108, 0, 74)+
    geom_path(na.rm = TRUE, arrow = arrow1, size = 1) +
    scale_x_continuous(limits = c(0,108), expand = c(0,0))+
    scale_y_continuous(limits = c(0,93), expand = c(0,0))
  ggsave(filename = fullname,p1)
}

for (i in 1:length(objects_1118$Obj)) {
  filename1 <- paste("plots/world_trajectory_overlay/1118",objects_1118$Obj[i],sep = "_")
  fullname <- paste(filename1, ".jpg",sep = "")
  p1 <- Traj_Obj_111x_clipped2[(Traj_Obj_111x_clipped2$comp == "1118"&Traj_Obj_111x_clipped2$Obj == objects_1118$Obj[i]),] %>% 
    ggplot(aes(X_SGF,Y_SGF, col = type, group = Obj))+
    annotation_custom(rasterGrob(ima_212, width = unit(1,"npc"), 
                                 height = unit(1,"npc")), 
                      0, 108, 0, 74)+
    geom_path(na.rm = TRUE, arrow = arrow1, size = 1) +
    scale_x_continuous(limits = c(0,108), expand = c(0,0))+
    scale_y_continuous(limits = c(0,93), expand = c(0,0))
  ggsave(filename = fullname,p1)
}

for (i in 1:length(objects_1119$Obj)) {
  filename1 <- paste("plots/world_trajectory_overlay/1119",objects_1119$Obj[i],sep = "_")
  fullname <- paste(filename1, ".jpg",sep = "")
  p1 <- Traj_Obj_111x_clipped2[(Traj_Obj_111x_clipped2$comp == "1119"&Traj_Obj_111x_clipped2$Obj == objects_1119$Obj[i]),] %>% 
    ggplot(aes(X_SGF,Y_SGF, col = type, group = Obj))+
    annotation_custom(rasterGrob(ima_212, width = unit(1,"npc"), 
                                 height = unit(1,"npc")), 
                      0, 108, 0, 74)+
    geom_path(na.rm = TRUE, arrow = arrow1, size = 1) +
    scale_x_continuous(limits = c(0,108), expand = c(0,0))+
    scale_y_continuous(limits = c(0,93), expand = c(0,0))
  ggsave(filename = fullname,p1)
}

for (i in 1:length(objects_11110$Obj)) {
  filename1 <- paste("plots/world_trajectory_overlay/11110",objects_11110$Obj[i],sep = "_")
  fullname <- paste(filename1, ".jpg",sep = "")
  p1 <- Traj_Obj_111x_clipped2[(Traj_Obj_111x_clipped2$comp == "11110"&Traj_Obj_111x_clipped2$Obj == objects_11110$Obj[i]),] %>% 
    ggplot(aes(X_SGF,Y_SGF, col = type, group = Obj))+
    annotation_custom(rasterGrob(ima_212, width = unit(1,"npc"), 
                                 height = unit(1,"npc")), 
                      0, 108, 0, 74)+
    geom_path(na.rm = TRUE, arrow = arrow1, size = 1) +
    scale_x_continuous(limits = c(0,108), expand = c(0,0))+
    scale_y_continuous(limits = c(0,93), expand = c(0,0))
  ggsave(filename = fullname,p1)
}

p1 <- Traj_Obj_212x_clipped2_dir2 %>% 
  ggplot()+
  annotation_custom(rasterGrob(ima_212, width = unit(1,"npc"), 
                               height = unit(1,"npc")), 
                    0, 108, 0, 74)+
  geom_point(aes(x=X,y=Y, col = V_mps_corrected, group = Obj,na.rm = TRUE)) +  
  scale_color_distiller(palette = "RdYlGn",direction = 1)+
  scale_x_continuous(limits = c(0,108), expand = c(0,0))+
  scale_y_continuous(limits = c(0,93), expand = c(0,0))
ggsave("plots/212.jpg",p1)
