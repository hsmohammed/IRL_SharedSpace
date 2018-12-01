Traj_Obj_111x_clipped2 %>% 
  ggplot(aes(speed_SGF))+geom_histogram(col = "black", fill = "lightblue3")

ima_212<- readJPEG("Brk-2-1-world.png")

arrow1 <- arrow(angle = 30, length = unit(0.05, "inches"),ends = "last", type = "open")

for (i in 1:length(objects_2121_dir2$V1)) {
  filename1 <- paste("plots/TrjMap/212x_dir2/2121",objects_2121_dir2$V1[i],sep = "_")
  fullname <- paste(filename1, ".jpg",sep = "")
  p1 <- Traj_Obj_212x_clipped2_dir2[(Traj_Obj_212x_clipped2_dir2$comp == "2121"&Traj_Obj_212x_clipped2_dir2$Obj == objects_2121_dir2$V1[i]),] %>% 
    ggplot(aes(X,Y, col = V_mps_corrected, group = Obj))+
    annotation_custom(rasterGrob(ima_212, width = unit(1,"npc"), 
                                 height = unit(1,"npc")), 
                      0, 108, 0, 74)+
    geom_path(na.rm = TRUE, arrow = arrow1, size = 1) +  scale_color_distiller(palette = "RdYlGn",direction = 1)+
    scale_x_continuous(limits = c(0,108), expand = c(0,0))+
    scale_y_continuous(limits = c(0,93), expand = c(0,0))
  ggsave(filename = fullname,p1)
}

for (i in 1:length(objects_2122_dir2$V1)) {
  filename1 <- paste("plots/TrjMap/212x_dir2/2122",objects_2122_dir2$V1[i],sep = "_")
  fullname <- paste(filename1, ".jpg",sep = "")
  p1 <- Traj_Obj_212x_clipped2_dir2[(Traj_Obj_212x_clipped2_dir2$comp == "2122"&Traj_Obj_212x_clipped2_dir2$Obj == objects_2122_dir2$V1[i]),] %>% 
    ggplot(aes(X,Y, col = V_mps_corrected, group = Obj))+
    annotation_custom(rasterGrob(ima_212, width = unit(1,"npc"), 
                                 height = unit(1,"npc")), 
                      0, 108, 0, 74)+
    geom_path(na.rm = TRUE, arrow = arrow1, size = 1) +  scale_color_distiller(palette = "RdYlGn",direction = 1)+
    scale_x_continuous(limits = c(0,108), expand = c(0,0))+
    scale_y_continuous(limits = c(0,93), expand = c(0,0))
  ggsave(filename = fullname,p1)
}

for (i in 1:length(objects_2123_dir2$V1)) {
  filename1 <- paste("plots/TrjMap/212x_dir2/2123",objects_2123_dir2$V1[i],sep = "_")
  fullname <- paste(filename1, ".jpg",sep = "")
  p1 <- Traj_Obj_212x_clipped2_dir2[(Traj_Obj_212x_clipped2_dir2$comp == "2123"&Traj_Obj_212x_clipped2_dir2$Obj == objects_2123_dir2$V1[i]),] %>% 
    ggplot(aes(X,Y, col = V_mps_corrected, group = Obj))+
    annotation_custom(rasterGrob(ima_212, width = unit(1,"npc"), 
                                 height = unit(1,"npc")), 
                      0, 108, 0, 74)+
    geom_path(na.rm = TRUE, arrow = arrow1, size = 1) +  scale_color_distiller(palette = "RdYlGn",direction = 1)+
    scale_x_continuous(limits = c(0,108), expand = c(0,0))+
    scale_y_continuous(limits = c(0,93), expand = c(0,0))
  ggsave(filename = fullname,p1)
}

for (i in 1:length(objects_2124_dir2$V1)) {
  filename1 <- paste("plots/TrjMap/212x_dir2/2124",objects_2124_dir2$V1[i],sep = "_")
  fullname <- paste(filename1, ".jpg",sep = "")
  p1 <- Traj_Obj_212x_clipped2_dir2[(Traj_Obj_212x_clipped2_dir2$comp == "2124"&Traj_Obj_212x_clipped2_dir2$Obj == objects_2124_dir2$V1[i]),] %>% 
    ggplot(aes(X,Y, col = V_mps_corrected, group = Obj))+
    annotation_custom(rasterGrob(ima_212, width = unit(1,"npc"), 
                                 height = unit(1,"npc")), 
                      0, 108, 0, 74)+
    geom_path(na.rm = TRUE, arrow = arrow1, size = 1) +  scale_color_distiller(palette = "RdYlGn",direction = 1)+
    scale_x_continuous(limits = c(0,108), expand = c(0,0))+
    scale_y_continuous(limits = c(0,93), expand = c(0,0))
  ggsave(filename = fullname,p1)
}

for (i in 1:length(objects_2125_dir2$V1)) {
  filename1 <- paste("plots/TrjMap/212x_dir2/2125",objects_2125_dir2$V1[i],sep = "_")
  fullname <- paste(filename1, ".jpg",sep = "")
  p1 <- Traj_Obj_212x_clipped2_dir2[(Traj_Obj_212x_clipped2_dir2$comp == "2125"&Traj_Obj_212x_clipped2_dir2$Obj == objects_2125_dir2$V1[i]),] %>% 
    ggplot(aes(X,Y, col = V_mps_corrected, group = Obj))+
    annotation_custom(rasterGrob(ima_212, width = unit(1,"npc"), 
                                 height = unit(1,"npc")), 
                      0, 108, 0, 74)+
    geom_path(na.rm = TRUE, arrow = arrow1, size = 1) +  scale_color_distiller(palette = "RdYlGn",direction = 1)+
    scale_x_continuous(limits = c(0,108), expand = c(0,0))+
    scale_y_continuous(limits = c(0,93), expand = c(0,0))
  ggsave(filename = fullname,p1)
}

for (i in 1:length(objects_2126_dir2$V1)) {
  filename1 <- paste("plots/TrjMap/212x_dir2/2126",objects_2126_dir2$V1[i],sep = "_")
  fullname <- paste(filename1, ".jpg",sep = "")
  p1 <- Traj_Obj_212x_clipped2_dir2[(Traj_Obj_212x_clipped2_dir2$comp == "2126"&Traj_Obj_212x_clipped2_dir2$Obj == objects_2126_dir2$V1[i]),] %>% 
    ggplot(aes(X,Y, col = V_mps_corrected, group = Obj))+
    annotation_custom(rasterGrob(ima_212, width = unit(1,"npc"), 
                                 height = unit(1,"npc")), 
                      0, 108, 0, 74)+
    geom_path(na.rm = TRUE, arrow = arrow1, size = 1) +  scale_color_distiller(palette = "RdYlGn",direction = 1)+
    scale_x_continuous(limits = c(0,108), expand = c(0,0))+
    scale_y_continuous(limits = c(0,93), expand = c(0,0))
  ggsave(filename = fullname,p1)
}

for (i in 1:length(objects_2127_dir2$V1)) {
  filename1 <- paste("plots/TrjMap/212x_dir2/2127",objects_2127_dir2$V1[i],sep = "_")
  fullname <- paste(filename1, ".jpg",sep = "")
  p1 <- Traj_Obj_212x_clipped2_dir2[(Traj_Obj_212x_clipped2_dir2$comp == "2127"&Traj_Obj_212x_clipped2_dir2$Obj == objects_2127_dir2$V1[i]),] %>% 
    ggplot(aes(X,Y, col = V_mps_corrected, group = Obj))+
    annotation_custom(rasterGrob(ima_212, width = unit(1,"npc"), 
                                 height = unit(1,"npc")), 
                      0, 108, 0, 74)+
    geom_path(na.rm = TRUE, arrow = arrow1, size = 1) +  scale_color_distiller(palette = "RdYlGn",direction = 1)+
    scale_x_continuous(limits = c(0,108), expand = c(0,0))+
    scale_y_continuous(limits = c(0,93), expand = c(0,0))
  ggsave(filename = fullname,p1)
}

for (i in 1:length(objects_2128_dir2$V1)) {
  filename1 <- paste("plots/TrjMap/212x_dir2/2128",objects_2128_dir2$V1[i],sep = "_")
  fullname <- paste(filename1, ".jpg",sep = "")
  p1 <- Traj_Obj_212x_clipped2_dir2[(Traj_Obj_212x_clipped2_dir2$comp == "2128"&Traj_Obj_212x_clipped2_dir2$Obj == objects_2128_dir2$V1[i]),] %>% 
    ggplot(aes(X,Y, col = V_mps_corrected, group = Obj))+
    annotation_custom(rasterGrob(ima_212, width = unit(1,"npc"), 
                                 height = unit(1,"npc")), 
                      0, 108, 0, 74)+
    geom_path(na.rm = TRUE, arrow = arrow1, size = 1) +  scale_color_distiller(palette = "RdYlGn",direction = 1)+
    scale_x_continuous(limits = c(0,108), expand = c(0,0))+
    scale_y_continuous(limits = c(0,93), expand = c(0,0))
  ggsave(filename = fullname,p1)
}

for (i in 1:length(objects_2129_dir2$V1)) {
  filename1 <- paste("plots/TrjMap/212x_dir2/2129",objects_2129_dir2$V1[i],sep = "_")
  fullname <- paste(filename1, ".jpg",sep = "")
  p1 <- Traj_Obj_212x_clipped2_dir2[(Traj_Obj_212x_clipped2_dir2$comp == "2129"&Traj_Obj_212x_clipped2_dir2$Obj == objects_2129_dir2$V1[i]),] %>% 
    ggplot(aes(X,Y, col = V_mps_corrected, group = Obj))+
    annotation_custom(rasterGrob(ima_212, width = unit(1,"npc"), 
                                 height = unit(1,"npc")), 
                      0, 108, 0, 74)+
    geom_path(na.rm = TRUE, arrow = arrow1, size = 1) +  scale_color_distiller(palette = "RdYlGn",direction = 1)+
    scale_x_continuous(limits = c(0,108), expand = c(0,0))+
    scale_y_continuous(limits = c(0,93), expand = c(0,0))
  ggsave(filename = fullname,p1)
}

for (i in 1:length(objects_21210_dir2$V1)) {
  filename1 <- paste("plots/TrjMap/212x_dir2/21210",objects_21210_dir2$V1[i],sep = "_")
  fullname <- paste(filename1, ".jpg",sep = "")
  p1 <- Traj_Obj_212x_clipped2_dir2[(Traj_Obj_212x_clipped2_dir2$comp == "21210"&Traj_Obj_212x_clipped2_dir2$Obj == objects_21210_dir2$V1[i]),] %>% 
    ggplot(aes(X,Y, col = V_mps_corrected, group = Obj))+
    annotation_custom(rasterGrob(ima_212, width = unit(1,"npc"), 
                                 height = unit(1,"npc")), 
                      0, 108, 0, 74)+
    geom_path(na.rm = TRUE, arrow = arrow1, size = 1) +  scale_color_distiller(palette = "RdYlGn",direction = 1)+
    scale_x_continuous(limits = c(0,108), expand = c(0,0))+
    scale_y_continuous(limits = c(0,93), expand = c(0,0))
  ggsave(filename = fullname,p1)
}

for (i in 1:length(objects_21211_dir2$V1)) {
  filename1 <- paste("plots/TrjMap/212x_dir2/21211",objects_21211_dir2$V1[i],sep = "_")
  fullname <- paste(filename1, ".jpg",sep = "")
  p1 <- Traj_Obj_212x_clipped2_dir2[(Traj_Obj_212x_clipped2_dir2$comp == "21211"&Traj_Obj_212x_clipped2_dir2$Obj == objects_21211_dir2$V1[i]),] %>% 
    ggplot(aes(X,Y, col = V_mps_corrected, group = Obj))+
    annotation_custom(rasterGrob(ima_212, width = unit(1,"npc"), 
                                 height = unit(1,"npc")), 
                      0, 108, 0, 74)+
    geom_path(na.rm = TRUE, arrow = arrow1, size = 1) +  scale_color_distiller(palette = "RdYlGn",direction = 1)+
    scale_x_continuous(limits = c(0,108), expand = c(0,0))+
    scale_y_continuous(limits = c(0,93), expand = c(0,0))
  ggsave(filename = fullname,p1)
}

for (i in 1:length(objects_21212_dir2$V1)) {
  filename1 <- paste("plots/TrjMap/212x_dir2/21212",objects_21212_dir2$V1[i],sep = "_")
  fullname <- paste(filename1, ".jpg",sep = "")
  p1 <- Traj_Obj_212x_clipped2_dir2[(Traj_Obj_212x_clipped2_dir2$comp == "21212"&Traj_Obj_212x_clipped2_dir2$Obj == objects_21212_dir2$V1[i]),] %>% 
    ggplot(aes(X,Y, col = V_mps_corrected, group = Obj))+
    annotation_custom(rasterGrob(ima_212, width = unit(1,"npc"), 
                                 height = unit(1,"npc")), 
                      0, 108, 0, 74)+
    geom_path(na.rm = TRUE, arrow = arrow1, size = 1) +  scale_color_distiller(palette = "RdYlGn",direction = 1)+
    scale_x_continuous(limits = c(0,108), expand = c(0,0))+
    scale_y_continuous(limits = c(0,93), expand = c(0,0))
  ggsave(filename = fullname,p1)
}

for (i in 1:length(objects_21213_dir2$V1)) {
  filename1 <- paste("plots/TrjMap/212x_dir2/21213",objects_21213_dir2$V1[i],sep = "_")
  fullname <- paste(filename1, ".jpg",sep = "")
  p1 <- Traj_Obj_212x_clipped2_dir2[(Traj_Obj_212x_clipped2_dir2$comp == "21213"&Traj_Obj_212x_clipped2_dir2$Obj == objects_21213_dir2$V1[i]),] %>% 
    ggplot(aes(X,Y, col = V_mps_corrected, group = Obj))+
    annotation_custom(rasterGrob(ima_212, width = unit(1,"npc"), 
                                 height = unit(1,"npc")), 
                      0, 108, 0, 74)+
    geom_path(na.rm = TRUE, arrow = arrow1, size = 1) +  scale_color_distiller(palette = "RdYlGn",direction = 1)+
    scale_x_continuous(limits = c(0,108), expand = c(0,0))+
    scale_y_continuous(limits = c(0,93), expand = c(0,0))
  ggsave(filename = fullname,p1)
}

for (i in 1:length(objects_21214_dir2$V1)) {
  filename1 <- paste("plots/TrjMap/212x_dir2/21214",objects_21214_dir2$V1[i],sep = "_")
  fullname <- paste(filename1, ".jpg",sep = "")
  p1 <- Traj_Obj_212x_clipped2_dir2[(Traj_Obj_212x_clipped2_dir2$comp == "21214"&Traj_Obj_212x_clipped2_dir2$Obj == objects_21214_dir2$V1[i]),] %>% 
    ggplot(aes(X,Y, col = V_mps_corrected, group = Obj))+
    annotation_custom(rasterGrob(ima_212, width = unit(1,"npc"), 
                                 height = unit(1,"npc")), 
                      0, 108, 0, 74)+
    geom_path(na.rm = TRUE, arrow = arrow1, size = 1) +  scale_color_distiller(palette = "RdYlGn",direction = 1)+
    scale_x_continuous(limits = c(0,108), expand = c(0,0))+
    scale_y_continuous(limits = c(0,93), expand = c(0,0))
  ggsave(filename = fullname,p1)
}

for (i in 1:length(objects_21215_dir2$V1)) {
  filename1 <- paste("plots/TrjMap/212x_dir2/21215",objects_21215_dir2$V1[i],sep = "_")
  fullname <- paste(filename1, ".jpg",sep = "")
  p1 <- Traj_Obj_212x_clipped2_dir2[(Traj_Obj_212x_clipped2_dir2$comp == "21215"&Traj_Obj_212x_clipped2_dir2$Obj == objects_21215_dir2$V1[i]),] %>% 
    ggplot(aes(X,Y, col = V_mps_corrected, group = Obj))+
    annotation_custom(rasterGrob(ima_212, width = unit(1,"npc"), 
                                 height = unit(1,"npc")), 
                      0, 108, 0, 74)+
    geom_path(na.rm = TRUE, arrow = arrow1, size = 1) +  scale_color_distiller(palette = "RdYlGn",direction = 1)+
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
