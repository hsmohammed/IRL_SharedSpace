

Traj_Obj_152x_clipped3 <- Traj_Obj_152x_clipped3 %>% 
  mutate(xgrid = discretize(X_axis2_SGF,method = "fixed" ,breaks = breaksX,labels = seq(1:(length(breaksX)-1)))) %>% 
  mutate(ygrid = discretize(Y_axis2_SGF,method = "fixed" ,breaks = breaksY,labels = seq(1:(length(breaksY)-1)))) %>% 
  mutate(speedGrid = discretize(speed_SGF,method = "fixed" ,breaks = breaksSpeed,labels = seq(1:(length(breaksSpeed)-1)))) %>% 
  mutate(yawGrid = discretize(yawAngle_axis2,method = "fixed" ,breaks = breaksYaw,labels = seq(1:(length(breaksYaw)-1)))) %>% 
  mutate(accGrid = discretize(acc_SGF,method = "fixed" ,breaks = breaksAcc,labels = seq(1:(length(breaksAcc)-1))))


Traj_FBF <- Traj_Obj_152x_clipped3 %>% 
  dplyr::group_by(Obj_ID) %>% 
  dplyr::arrange(F, type)

Traj_FBF_count <- Traj_FBF %>% 
  group_by(F) %>% 
  summarise(count = n())


p1 <- tables_XY %>% 
  ggplot(aes(X,Y, col = code, group = code))+
  annotation_custom(rasterGrob(ima_212, width = unit(1,"npc"), 
                               height = unit(1,"npc")), 
                    0, 100, 0, 67)+
  geom_path(na.rm = TRUE, size = 1) +
  scale_x_continuous(limits = c(0,67), expand = c(0,0))+
  scale_y_continuous(limits = c(0,100), expand = c(0,0))
ggsave(filename = "Map/tables_XY.jpg",p1)
