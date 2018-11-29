for (i in 1:length(objects_1111$V1)) {
  filename1 <- paste("plots/SP/SP_111x/SP_1111",objects_1111$V1[i],sep = "_")
  fullname <- paste(filename1, ".jpg",sep = "")
  p1 <- Traj_Obj_111x_clipped2[(Traj_Obj_111x_clipped2$comp == "1111"&Traj_Obj_111x_clipped2$Obj == objects_1111$V1[i]),] %>% 
    ggplot()+
    geom_line(aes(F,V_mps_corrected),na.rm = TRUE, color = "red")+
    geom_line(aes(F,speed_SGF),na.rm = TRUE, color = "blue")+
    scale_y_continuous(limits = c(0,15))
  
  ggsave(filename = fullname,p1)
}

for (i in 1:length(objects_1112$V1)) {
  filename1 <- paste("plots/SP/SP_111x/SP_1112",objects_1112$V1[i],sep = "_")
  fullname <- paste(filename1, ".jpg",sep = "")
  p1 <- Traj_Obj_111x_clipped2[(Traj_Obj_111x_clipped2$comp == "1112"&Traj_Obj_111x_clipped2$Obj == objects_1112$V1[i]),] %>% 
    ggplot()+
    geom_line(aes(F,V_mps_corrected),na.rm = TRUE, color = "red")+
    geom_line(aes(F,speed_SGF),na.rm = TRUE, color = "blue")+
    scale_y_continuous(limits = c(0,15))
  ggsave(filename = fullname,p1)
}

for (i in 1:length(objects_1113$V1)) {
  filename1 <- paste("plots/SP/SP_111x/SP_1113",objects_1113$V1[i],sep = "_")
  fullname <- paste(filename1, ".jpg",sep = "")
  p1 <- Traj_Obj_111x_clipped2[(Traj_Obj_111x_clipped2$comp == "1113"&Traj_Obj_111x_clipped2$Obj == objects_1113$V1[i]),] %>% 
    ggplot()+
    geom_line(aes(F,V_mps_corrected),na.rm = TRUE, color = "red")+
    geom_line(aes(F,speed_SGF),na.rm = TRUE, color = "blue")+
    scale_y_continuous(limits = c(0,15))
  ggsave(filename = fullname,p1)
}

for (i in 1:length(objects_1114$V1)) {
  filename1 <- paste("plots/SP/SP_111x/SP_1114",objects_1114$V1[i],sep = "_")
  fullname <- paste(filename1, ".jpg",sep = "")
  p1 <- Traj_Obj_111x_clipped2[(Traj_Obj_111x_clipped2$comp == "1114"&Traj_Obj_111x_clipped2$Obj == objects_1114$V1[i]),] %>% 
    ggplot()+
    geom_line(aes(F,V_mps_corrected),na.rm = TRUE, color = "red")+
    geom_line(aes(F,speed_SGF),na.rm = TRUE, color = "blue")+
    scale_y_continuous(limits = c(0,15))
  ggsave(filename = fullname,p1)
}

for (i in 1:length(objects_1115$V1)) {
  filename1 <- paste("plots/SP/SP_111x/SP_1115",objects_1115$V1[i],sep = "_")
  fullname <- paste(filename1, ".jpg",sep = "")
  p1 <- Traj_Obj_111x_clipped2[(Traj_Obj_111x_clipped2$comp == "1115"&Traj_Obj_111x_clipped2$Obj == objects_1115$V1[i]),] %>% 
    ggplot()+
    geom_line(aes(F,V_mps_corrected),na.rm = TRUE, color = "red")+
    geom_line(aes(F,speed_SGF),na.rm = TRUE, color = "blue")+
    scale_y_continuous(limits = c(0,15))
  ggsave(filename = fullname,p1)
}

for (i in 1:length(objects_1116$V1)) {
  filename1 <- paste("plots/SP/SP_111x/SP_1116",objects_1116$V1[i],sep = "_")
  fullname <- paste(filename1, ".jpg",sep = "")
  p1 <- Traj_Obj_111x_clipped2[(Traj_Obj_111x_clipped2$comp == "1116"&Traj_Obj_111x_clipped2$Obj == objects_1116$V1[i]),] %>% 
    ggplot()+
    geom_line(aes(F,V_mps_corrected),na.rm = TRUE, color = "red")+
    geom_line(aes(F,speed_SGF),na.rm = TRUE, color = "blue")+
    scale_y_continuous(limits = c(0,15))
  ggsave(filename = fullname,p1)
}

for (i in 1:length(objects_1117$V1)) {
  filename1 <- paste("plots/SP/SP_111x/SP_1117",objects_1117$V1[i],sep = "_")
  fullname <- paste(filename1, ".jpg",sep = "")
  p1 <- Traj_Obj_111x_clipped2[(Traj_Obj_111x_clipped2$comp == "1117"&Traj_Obj_111x_clipped2$Obj == objects_1117$V1[i]),] %>% 
    ggplot()+
    geom_line(aes(F,V_mps_corrected),na.rm = TRUE, color = "red")+
    geom_line(aes(F,speed_SGF),na.rm = TRUE, color = "blue")+
    scale_y_continuous(limits = c(0,15))
  ggsave(filename = fullname,p1)
}

for (i in 1:length(objects_1118$V1)) {
  filename1 <- paste("plots/SP/SP_111x/SP_1118",objects_1118$V1[i],sep = "_")
  fullname <- paste(filename1, ".jpg",sep = "")
  p1 <- Traj_Obj_111x_clipped2[(Traj_Obj_111x_clipped2$comp == "1118"&Traj_Obj_111x_clipped2$Obj == objects_1118$V1[i]),] %>% 
    ggplot()+
    geom_line(aes(F,V_mps_corrected),na.rm = TRUE, color = "red")+
    geom_line(aes(F,speed_SGF),na.rm = TRUE, color = "blue")+
    scale_y_continuous(limits = c(0,15))
  ggsave(filename = fullname,p1)
}

for (i in 1:length(objects_1119$V1)) {
  filename1 <- paste("plots/SP/SP_111x/SP_1119",objects_1119$V1[i],sep = "_")
  fullname <- paste(filename1, ".jpg",sep = "")
  p1 <- Traj_Obj_111x_clipped2[(Traj_Obj_111x_clipped2$comp == "1119"&Traj_Obj_111x_clipped2$Obj == objects_1119$V1[i]),] %>% 
    ggplot()+
    geom_line(aes(F,V_mps_corrected),na.rm = TRUE, color = "red")+
    geom_line(aes(F,speed_SGF),na.rm = TRUE, color = "blue")+
    scale_y_continuous(limits = c(0,15))
  ggsave(filename = fullname,p1)
}

for (i in 1:length(objects_11110$V1)) {
  filename1 <- paste("plots/SP/SP_111x/SP_11110",objects_11110$V1[i],sep = "_")
  fullname <- paste(filename1, ".jpg",sep = "")
  p1 <- Traj_Obj_111x_clipped2[(Traj_Obj_111x_clipped2$comp == "11110"&Traj_Obj_111x_clipped2$Obj == objects_11110$V1[i]),] %>% 
    ggplot()+
    geom_line(aes(F,V_mps_corrected),na.rm = TRUE, color = "red")+
    geom_line(aes(F,speed_SGF),na.rm = TRUE, color = "blue")+
    scale_y_continuous(limits = c(0,15))
  ggsave(filename = fullname,p1)
}

for (i in 1:length(objects_11111$V1)) {
  filename1 <- paste("plots/SP/SP_111x/SP_11111",objects_11111$V1[i],sep = "_")
  fullname <- paste(filename1, ".jpg",sep = "")
  p1 <- Traj_Obj_111x_clipped2[(Traj_Obj_111x_clipped2$comp == "11111"&Traj_Obj_111x_clipped2$Obj == objects_11111$V1[i]),] %>% 
    ggplot()+
    geom_line(aes(F,V_mps_corrected),na.rm = TRUE, color = "red")+
    geom_line(aes(F,speed_SGF),na.rm = TRUE, color = "blue")+
    scale_y_continuous(limits = c(0,15))
  ggsave(filename = fullname,p1)
}

for (i in 1:length(objects_11112$V1)) {
  filename1 <- paste("plots/SP/SP_111x/SP_11112",objects_11112$V1[i],sep = "_")
  fullname <- paste(filename1, ".jpg",sep = "")
  p1 <- Traj_Obj_111x_clipped2[(Traj_Obj_111x_clipped2$comp == "11112"&Traj_Obj_111x_clipped2$Obj == objects_11112$V1[i]),] %>% 
    ggplot()+
    geom_line(aes(F,V_mps_corrected),na.rm = TRUE, color = "red")+
    geom_line(aes(F,speed_SGF),na.rm = TRUE, color = "blue")+
    scale_y_continuous(limits = c(0,15))
  ggsave(filename = fullname,p1)
}

for (i in 1:length(objects_11113$V1)) {
  filename1 <- paste("plots/SP/SP_111x/SP_11113",objects_11113$V1[i],sep = "_")
  fullname <- paste(filename1, ".jpg",sep = "")
  p1 <- Traj_Obj_111x_clipped2[(Traj_Obj_111x_clipped2$comp == "11113"&Traj_Obj_111x_clipped2$Obj == objects_11113$V1[i]),] %>% 
    ggplot()+
    geom_line(aes(F,V_mps_corrected),na.rm = TRUE, color = "red")+
    geom_line(aes(F,speed_SGF),na.rm = TRUE, color = "blue")+
    scale_y_continuous(limits = c(0,15))
  ggsave(filename = fullname,p1)
}

for (i in 1:length(objects_11114$V1)) {
  filename1 <- paste("plots/SP/SP_111x/SP_11114",objects_11114$V1[i],sep = "_")
  fullname <- paste(filename1, ".jpg",sep = "")
  p1 <- Traj_Obj_111x_clipped2[(Traj_Obj_111x_clipped2$comp == "11114"&Traj_Obj_111x_clipped2$Obj == objects_11114$V1[i]),] %>% 
    ggplot()+
    geom_line(aes(F,V_mps_corrected),na.rm = TRUE, color = "red")+
    geom_line(aes(F,speed_SGF),na.rm = TRUE, color = "blue")+
    scale_y_continuous(limits = c(0,15))
  ggsave(filename = fullname,p1)
}

