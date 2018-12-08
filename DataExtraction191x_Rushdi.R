# DataExtraction121x_Rushdi
source("loadLibraries.R")
FN <- 29.97

# 1-9-1-18
X1111 <- read.csv('Data/X-1-9-1-18.csv',header = FALSE)
X1111 <- X1111 %>% 
  gather(key = "measure_X", value = "X", 1:length(X1111))
X1111$measure_X <- str_replace(X1111$measure_X,"V","")

Y1111 <- read.csv('Data/Y-1-9-1-18.csv',header = FALSE)
Y1111 <- Y1111 %>% 
  gather(key = "measure_X", value = "Y", 1:length(Y1111))
Y1111$measure_X <- str_replace(Y1111$measure_X,"V","")


F1111 <- read.csv('Data/F-1-9-1-18.csv',header = FALSE)
F1111 <- F1111 %>% 
  gather(key = "measure_X", value = "F", 1:length(F1111))
F1111$measure_X <- str_replace(F1111$measure_X,"V","")


VX1111 <- read.csv('Data/VX-1-9-1-18.csv',header = FALSE)
VX1111 <- VX1111 %>% 
  gather(key = "measure_X", value = "VX", 1:length(VX1111))
VX1111$measure_X <- str_replace(VX1111$measure_X,"V","")


VY1111 <- read.csv('Data/VY-1-9-1-18.csv',header = FALSE)
VY1111 <- VY1111 %>% 
  gather(key = "measure_X", value = "VY", 1:length(VY1111))
VY1111$measure_X <- str_replace(VY1111$measure_X,"V","")

# 
# #1112 
# 
# X1112 <- read.csv('Data/X-1-1-2-9922.csv',header = FALSE)
# X1112 <- X1112 %>% 
#   gather(key = "measure_X", value = "X", 1:length(X1112))
# X1112$measure_X <- str_replace(X1112$measure_X,"V","")
# 
# 
# Y1112 <- read.csv('Data/Y-1-1-2-9922.csv',header = FALSE)
# Y1112 <- Y1112 %>% 
#   gather(key = "measure_X", value = "Y", 1:length(Y1112))
# Y1112$measure_X <- str_replace(Y1112$measure_X,"V","")
# 
# 
# F1112 <- read.csv('Data/F-1-1-2-9922.csv',header = FALSE)
# F1112 <- F1112 %>% 
#   gather(key = "measure_X", value = "F", 1:length(F1112))
# F1112$measure_X <- str_replace(F1112$measure_X,"V","")
# 
# 
# VX1112 <- read.csv('Data/VX-1-1-2-9922.csv',header = FALSE)
# VX1112 <- VX1112 %>% 
#   gather(key = "measure_X", value = "VX", 1:length(VX1112))
# VX1112$measure_X <- str_replace(VX1112$measure_X,"V","")
# 
# VY1112 <- read.csv('Data/VY-1-1-2-9922.csv',header = FALSE)
# VY1112 <- VY1112 %>% 
#   gather(key = "measure_X", value = "VY", 1:length(VY1112))
# VY1112$measure_X <- str_replace(VY1112$measure_X,"V","")
# 
# #1113
# 
# X1113 <- read.csv('Data/X-1-1-2-2323.csv',header = FALSE)
# X1113 <- X1113 %>% 
#   gather(key = "measure_X", value = "X", 1:length(X1113))
# X1113$measure_X <- str_replace(X1113$measure_X,"V","")
# 
# Y1113 <- read.csv('Data/Y-1-1-2-2323.csv',header = FALSE)
# Y1113 <- Y1113 %>% 
#   gather(key = "measure_X", value = "Y", 1:length(Y1113))
# Y1113$measure_X <- str_replace(Y1113$measure_X,"V","")
# 
# F1113 <- read.csv('Data/F-1-1-2-2323.csv',header = FALSE)
# F1113 <- F1113 %>% 
#   gather(key = "measure_X", value = "F", 1:length(F1113))
# F1113$measure_X <- str_replace(F1113$measure_X,"V","")
# 
# VX1113 <- read.csv('Data/VX-1-1-2-2323.csv',header = FALSE)
# VX1113 <- VX1113 %>% 
#   gather(key = "measure_X", value = "VX", 1:length(VX1113))
# VX1113$measure_X <- str_replace(VX1113$measure_X,"V","")
# 
# VY1113 <- read.csv('Data/VY-1-1-2-2323.csv',header = FALSE)
# VY1113 <- VY1113 %>% 
#   gather(key = "measure_X", value = "VY", 1:length(VY1113))
# VY1113$measure_X <- str_replace(VY1113$measure_X,"V","")
# 
# #1114
# 
# X1114 <- read.csv('Data/X-1-1-2-2626.csv',header = FALSE)
# X1114 <- X1114 %>% 
#   gather(key = "measure_X", value = "X", 1:length(X1114))
# X1114$measure_X <- str_replace(X1114$measure_X,"V","")
# 
# Y1114 <- read.csv('Data/Y-1-1-2-2626.csv',header = FALSE)
# Y1114 <- Y1114 %>% 
#   gather(key = "measure_X", value = "Y", 1:length(Y1114))
# Y1114$measure_X <- str_replace(Y1114$measure_X,"V","")
# 
# F1114 <- read.csv('Data/F-1-1-2-2626.csv',header = FALSE)
# F1114 <- F1114 %>% 
#   gather(key = "measure_X", value = "F", 1:length(F1114))
# F1114$measure_X <- str_replace(F1114$measure_X,"V","")
# 
# VX1114 <- read.csv('Data/VX-1-1-2-2626.csv',header = FALSE)
# VX1114 <- VX1114 %>% 
#   gather(key = "measure_X", value = "VX", 1:length(VX1114))
# VX1114$measure_X <- str_replace(VX1114$measure_X,"V","")
# 
# VY1114 <- read.csv('Data/VY-1-1-2-2626.csv',header = FALSE)
# VY1114 <- VY1114 %>% 
#   gather(key = "measure_X", value = "VY", 1:length(VY1114))
# VY1114$measure_X <- str_replace(VY1114$measure_X,"V","")
# 
# #1115
# 
# X1115 <- read.csv('Data/X-1-2-1-1.csv',header = FALSE)
# X1115 <- X1115 %>% 
#   gather(key = "measure_X", value = "X", 1:length(X1115))
# X1115$measure_X <- str_replace(X1115$measure_X,"V","")
# 
# Y1115 <- read.csv('Data/Y-1-2-1-1.csv',header = FALSE)
# Y1115 <- Y1115 %>% 
#   gather(key = "measure_X", value = "Y", 1:length(Y1115))
# Y1115$measure_X <- str_replace(Y1115$measure_X,"V","")
# 
# F1115 <- read.csv('Data/F-1-2-1-1.csv',header = FALSE)
# F1115 <- F1115 %>% 
#   gather(key = "measure_X", value = "F", 1:length(F1115))
# F1115$measure_X <- str_replace(F1115$measure_X,"V","")
# 
# VX1115 <- read.csv('Data/VX-1-2-1-1.csv',header = FALSE)
# VX1115 <- VX1115 %>% 
#   gather(key = "measure_X", value = "VX", 1:length(VX1115))
# VX1115$measure_X <- str_replace(VX1115$measure_X,"V","")
# 
# VY1115 <- read.csv('Data/VY-1-2-1-1.csv',header = FALSE)
# VY1115 <- VY1115 %>% 
#   gather(key = "measure_X", value = "VY", 1:length(VY1115))
# VY1115$measure_X <- str_replace(VY1115$measure_X,"V","")
# 
# #1116
# 
# X1116 <- read.csv('Data/X-1-2-2-1.csv',header = FALSE)
# X1116 <- X1116 %>% 
#   gather(key = "measure_X", value = "X", 1:length(X1116))
# X1116$measure_X <- str_replace(X1116$measure_X,"V","")
# 
# Y1116 <- read.csv('Data/Y-1-2-2-1.csv',header = FALSE)
# Y1116 <- Y1116 %>% 
#   gather(key = "measure_X", value = "Y", 1:length(Y1116))
# Y1116$measure_X <- str_replace(Y1116$measure_X,"V","")
# 
# F1116 <- read.csv('Data/F-1-2-2-1.csv',header = FALSE)
# F1116 <- F1116 %>% 
#   gather(key = "measure_X", value = "F", 1:length(F1116))
# F1116$measure_X <- str_replace(F1116$measure_X,"V","")
# 
# VX1116 <- read.csv('Data/VX-1-2-2-1.csv',header = FALSE)
# VX1116 <- VX1116 %>% 
#   gather(key = "measure_X", value = "VX", 1:length(VX1116))
# VX1116$measure_X <- str_replace(VX1116$measure_X,"V","")
# 
# VY1116 <- read.csv('Data/VY-1-2-2-1.csv',header = FALSE)
# VY1116 <- VY1116 %>% 
#   gather(key = "measure_X", value = "VY", 1:length(VY1116))
# VY1116$measure_X <- str_replace(VY1116$measure_X,"V","")
# 
# #1117
# 
# X1117 <- read.csv('Data/X-1-2-2-3.csv',header = FALSE)
# X1117 <- X1117 %>% 
#   gather(key = "measure_X", value = "X", 1:length(X1117))
# X1117$measure_X <- str_replace(X1117$measure_X,"V","")
# 
# Y1117 <- read.csv('Data/Y-1-2-2-3.csv',header = FALSE)
# Y1117 <- Y1117 %>% 
#   gather(key = "measure_X", value = "Y", 1:length(Y1117))
# Y1117$measure_X <- str_replace(Y1117$measure_X,"V","")
# 
# F1117 <- read.csv('Data/F-1-2-2-3.csv',header = FALSE)
# F1117 <- F1117 %>% 
#   gather(key = "measure_X", value = "F", 1:length(F1117))
# F1117$measure_X <- str_replace(F1117$measure_X,"V","")
# 
# VX1117 <- read.csv('Data/VX-1-2-2-3.csv',header = FALSE)
# VX1117 <- VX1117 %>% 
#   gather(key = "measure_X", value = "VX", 1:length(VX1117))
# VX1117$measure_X <- str_replace(VX1117$measure_X,"V","")
# 
# VY1117 <- read.csv('Data/VY-1-2-2-3.csv',header = FALSE)
# VY1117 <- VY1117 %>% 
#   gather(key = "measure_X", value = "VY", 1:length(VY1117))
# VY1117$measure_X <- str_replace(VY1117$measure_X,"V","")
# 
# #1118
# 
# X1118 <- read.csv('Data/X-1-2-2-12.csv',header = FALSE)
# X1118 <- X1118 %>% 
#   gather(key = "measure_X", value = "X", 1:length(X1118))
# X1118$measure_X <- str_replace(X1118$measure_X,"V","")
# 
# Y1118 <- read.csv('Data/Y-1-2-2-12.csv',header = FALSE)
# Y1118 <- Y1118 %>% 
#   gather(key = "measure_X", value = "Y", 1:length(Y1118))
# Y1118$measure_X <- str_replace(Y1118$measure_X,"V","")
# 
# F1118 <- read.csv('Data/F-1-2-2-12.csv',header = FALSE)
# F1118 <- F1118 %>% 
#   gather(key = "measure_X", value = "F", 1:length(F1118))
# F1118$measure_X <- str_replace(F1118$measure_X,"V","")
# 
# VX1118 <- read.csv('Data/VX-1-2-2-12.csv',header = FALSE)
# VX1118 <- VX1118 %>% 
#   gather(key = "measure_X", value = "VX", 1:length(VX1118))
# VX1118$measure_X <- str_replace(VX1118$measure_X,"V","")
# 
# VY1118 <- read.csv('Data/VY-1-2-2-12.csv',header = FALSE)
# VY1118 <- VY1118 %>% 
#   gather(key = "measure_X", value = "VY", 1:length(VY1118))
# VY1118$measure_X <- str_replace(VY1118$measure_X,"V","")
# 
# #1119
# 
# X1119 <- read.csv('Data/X-1-2-2-20.csv',header = FALSE)
# X1119 <- X1119 %>% 
#   gather(key = "measure_X", value = "X", 1:length(X1119))
# X1119$measure_X <- str_replace(X1119$measure_X,"V","")
# 
# Y1119 <- read.csv('Data/Y-1-2-2-20.csv',header = FALSE)
# Y1119 <- Y1119 %>% 
#   gather(key = "measure_X", value = "Y", 1:length(Y1119))
# Y1119$measure_X <- str_replace(Y1119$measure_X,"V","")
# 
# F1119 <- read.csv('Data/F-1-2-2-20.csv',header = FALSE)
# F1119 <- F1119 %>% 
#   gather(key = "measure_X", value = "F", 1:length(F1119))
# F1119$measure_X <- str_replace(F1119$measure_X,"V","")
# 
# VX1119 <- read.csv('Data/VX-1-2-2-20.csv',header = FALSE)
# VX1119 <- VX1119 %>% 
#   gather(key = "measure_X", value = "VX", 1:length(VX1119))
# VX1119$measure_X <- str_replace(VX1119$measure_X,"V","")
# 
# VY1119 <- read.csv('Data/VY-1-2-2-20.csv',header = FALSE)
# VY1119 <- VY1119 %>% 
#   gather(key = "measure_X", value = "VY", 1:length(VY1119))
# VY1119$measure_X <- str_replace(VY1119$measure_X,"V","")
# 
# #11110
# 
# X11110 <- read.csv('Data/X-1-2-2-21.csv',header = FALSE)
# X11110 <- X11110 %>% 
#   gather(key = "measure_X", value = "X", 1:length(X11110))
# X11110$measure_X <- str_replace(X11110$measure_X,"V","")
# 
# Y11110 <- read.csv('Data/Y-1-2-2-21.csv',header = FALSE)
# Y11110 <- Y11110 %>% 
#   gather(key = "measure_X", value = "Y", 1:length(Y11110))
# Y11110$measure_X <- str_replace(Y11110$measure_X,"V","")
# 
# F11110 <- read.csv('Data/F-1-2-2-21.csv',header = FALSE)
# F11110 <- F11110 %>% 
#   gather(key = "measure_X", value = "F", 1:length(F11110))
# F11110$measure_X <- str_replace(F11110$measure_X,"V","")
# 
# VX11110 <- read.csv('Data/VX-1-2-2-21.csv',header = FALSE)
# VX11110 <- VX11110 %>% 
#   gather(key = "measure_X", value = "VX", 1:length(VX11110))
# VX11110$measure_X <- str_replace(VX11110$measure_X,"V","")
# 
# VY11110 <- read.csv('Data/VY-1-2-2-21.csv',header = FALSE)
# VY11110 <- VY11110 %>% 
#   gather(key = "measure_X", value = "VY", 1:length(VY11110))
# VY11110$measure_X <- str_replace(VY11110$measure_X,"V","")

# Object
# add +1 to obj_Id in code
objects_1111 <- read.csv(file = "Data/Objects/1-9-1-18.csv", header = FALSE)
objects_1111$V1 <- objects_1111$V1 +1
# objects_1112 <- read.csv(file = "Data/Objects/1112.csv", header = FALSE)
# objects_1112$V1 <- objects_1112$V1 +1
# objects_1113 <- read.csv(file = "Data/Objects/1113.csv",header = FALSE)
# objects_1113$V1 <- objects_1113$V1 +1
# objects_1114 <- read.csv(file = "Data/Objects/1114.csv", header = FALSE)
# objects_1114$V1 <- objects_1114$V1 +1
# objects_1115 <- read.csv(file = "Data/Objects/1115.csv",header = FALSE)
# objects_1115$V1 <- objects_1115$V1 +1
# objects_1116 <- read.csv(file = "Data/Objects/1116.csv", header = FALSE)
# objects_1116$V1 <- objects_1116$V1 +1
# objects_1117 <- read.csv(file = "Data/Objects/1117.csv",header = FALSE)
# objects_1117$V1 <- objects_1117$V1 +1
# objects_1118 <- read.csv(file = "Data/Objects/1118.csv", header = FALSE)
# objects_1118$V1 <- objects_1118$V1 +1
# objects_1119 <- read.csv(file = "Data/Objects/1119.csv",header = FALSE)
# objects_1119$V1 <- objects_1119$V1 +1
# objects_11110 <- read.csv(file = "Data/Objects/11110.csv", header = FALSE)
# objects_11110$V1 <- objects_11110$V1 +1


names(objects_1111)[1]<-paste("Obj")
names(objects_1111)[2]<-paste("type")

# names(objects_1112)[1]<-paste("Obj")
# names(objects_1112)[2]<-paste("type")
# 
# names(objects_1113)[1]<-paste("Obj")
# names(objects_1113)[2]<-paste("type")
# 
# names(objects_1114)[1]<-paste("Obj")
# names(objects_1114)[2]<-paste("type")
# 
# names(objects_1115)[1]<-paste("Obj")
# names(objects_1115)[2]<-paste("type")
# 
# names(objects_1116)[1]<-paste("Obj")
# names(objects_1116)[2]<-paste("type")
# 
# names(objects_1117)[1]<-paste("Obj")
# names(objects_1117)[2]<-paste("type")
# 
# names(objects_1118)[1]<-paste("Obj")
# names(objects_1118)[2]<-paste("type")
# 
# names(objects_1119)[1]<-paste("Obj")
# names(objects_1119)[2]<-paste("type")
# 
# names(objects_11110)[1]<-paste("Obj")
# names(objects_11110)[2]<-paste("type")



#1111

Traj_df_1111 <- data.frame(X1111$X,Y1111$Y,F1111$F,VX1111$VX,VY1111$VY,X1111$measure_X)
glimpse(Traj_df_1111)
names(Traj_df_1111)[1]<-paste("X")
names(Traj_df_1111)[2]<-paste("Y")
names(Traj_df_1111)[3]<-paste("F")
names(Traj_df_1111)[4]<-paste("VX")
names(Traj_df_1111)[5]<-paste("VY")
names(Traj_df_1111)[6]<-paste("Obj")

# #1112
# 
# Traj_df_1112 <- data.frame(X1112$X,Y1112$Y,F1112$F,VX1112$VX,VY1112$VY,X1112$measure_X)
# glimpse(Traj_df_1112)
# names(Traj_df_1112)[1]<-paste("X")
# names(Traj_df_1112)[2]<-paste("Y")
# names(Traj_df_1112)[3]<-paste("F")
# names(Traj_df_1112)[4]<-paste("VX")
# names(Traj_df_1112)[5]<-paste("VY")
# names(Traj_df_1112)[6]<-paste("Obj")
# 
# #1113
# 
# Traj_df_1113 <- data.frame(X1113$X,Y1113$Y,F1113$F,VX1113$VX,VY1113$VY,X1113$measure_X)
# glimpse(Traj_df_1113)
# names(Traj_df_1113)[1]<-paste("X")
# names(Traj_df_1113)[2]<-paste("Y")
# names(Traj_df_1113)[3]<-paste("F")
# names(Traj_df_1113)[4]<-paste("VX")
# names(Traj_df_1113)[5]<-paste("VY")
# names(Traj_df_1113)[6]<-paste("Obj")
# 
# #1114
# 
# Traj_df_1114 <- data.frame(X1114$X,Y1114$Y,F1114$F,VX1114$VX,VY1114$VY,X1114$measure_X)
# glimpse(Traj_df_1114)
# names(Traj_df_1114)[1]<-paste("X")
# names(Traj_df_1114)[2]<-paste("Y")
# names(Traj_df_1114)[3]<-paste("F")
# names(Traj_df_1114)[4]<-paste("VX")
# names(Traj_df_1114)[5]<-paste("VY")
# names(Traj_df_1114)[6]<-paste("Obj")
# 
# #1115
# 
# Traj_df_1115 <- data.frame(X1115$X,Y1115$Y,F1115$F,VX1115$VX,VY1115$VY,X1115$measure_X)
# glimpse(Traj_df_1115)
# names(Traj_df_1115)[1]<-paste("X")
# names(Traj_df_1115)[2]<-paste("Y")
# names(Traj_df_1115)[3]<-paste("F")
# names(Traj_df_1115)[4]<-paste("VX")
# names(Traj_df_1115)[5]<-paste("VY")
# names(Traj_df_1115)[6]<-paste("Obj")
# 
# #1116
# 
# Traj_df_1116 <- data.frame(X1116$X,Y1116$Y,F1116$F,VX1116$VX,VY1116$VY,X1116$measure_X)
# glimpse(Traj_df_1116)
# names(Traj_df_1116)[1]<-paste("X")
# names(Traj_df_1116)[2]<-paste("Y")
# names(Traj_df_1116)[3]<-paste("F")
# names(Traj_df_1116)[4]<-paste("VX")
# names(Traj_df_1116)[5]<-paste("VY")
# names(Traj_df_1116)[6]<-paste("Obj")
# 
# #1117
# 
# Traj_df_1117 <- data.frame(X1117$X,Y1117$Y,F1117$F,VX1117$VX,VY1117$VY,X1117$measure_X)
# glimpse(Traj_df_1117)
# names(Traj_df_1117)[1]<-paste("X")
# names(Traj_df_1117)[2]<-paste("Y")
# names(Traj_df_1117)[3]<-paste("F")
# names(Traj_df_1117)[4]<-paste("VX")
# names(Traj_df_1117)[5]<-paste("VY")
# names(Traj_df_1117)[6]<-paste("Obj")
# 
# #1118
# 
# Traj_df_1118 <- data.frame(X1118$X,Y1118$Y,F1118$F,VX1118$VX,VY1118$VY,X1118$measure_X)
# glimpse(Traj_df_1118)
# names(Traj_df_1118)[1]<-paste("X")
# names(Traj_df_1118)[2]<-paste("Y")
# names(Traj_df_1118)[3]<-paste("F")
# names(Traj_df_1118)[4]<-paste("VX")
# names(Traj_df_1118)[5]<-paste("VY")
# names(Traj_df_1118)[6]<-paste("Obj")
# 
# #1119
# 
# Traj_df_1119 <- data.frame(X1119$X,Y1119$Y,F1119$F,VX1119$VX,VY1119$VY,X1119$measure_X)
# glimpse(Traj_df_1119)
# names(Traj_df_1119)[1]<-paste("X")
# names(Traj_df_1119)[2]<-paste("Y")
# names(Traj_df_1119)[3]<-paste("F")
# names(Traj_df_1119)[4]<-paste("VX")
# names(Traj_df_1119)[5]<-paste("VY")
# names(Traj_df_1119)[6]<-paste("Obj")
# 
# #11110
# 
# Traj_df_11110 <- data.frame(X11110$X,Y11110$Y,F11110$F,VX11110$VX,VY11110$VY,X11110$measure_X)
# glimpse(Traj_df_11110)
# names(Traj_df_11110)[1]<-paste("X")
# names(Traj_df_11110)[2]<-paste("Y")
# names(Traj_df_11110)[3]<-paste("F")
# names(Traj_df_11110)[4]<-paste("VX")
# names(Traj_df_11110)[5]<-paste("VY")
# names(Traj_df_11110)[6]<-paste("Obj")



Traj_df_1111 <- Traj_df_1111 %>% 
  mutate(V = sqrt(VX^2+VY^2)) %>% 
  mutate(V_kph = V*FN*3.6) %>% 
  mutate(V_mps = V*FN) %>% 
  mutate(VX_mps = VX*FN) %>% 
  mutate(VY_mps = VY*FN)
Traj_df_1111 <- Traj_df_1111[apply(Traj_df_1111[1],1,function(z) !any(z==0)),]

# Traj_df_1112 <- Traj_df_1112 %>% 
#   mutate(V = sqrt(VX^2+VY^2)) %>% 
#   mutate(V_kph = V*FN*3.6) %>% 
#   mutate(V_mps = V*FN) %>% 
#   mutate(VX_mps = VX*FN) %>% 
#   mutate(VY_mps = VY*FN)
# Traj_df_1112 <- Traj_df_1112[apply(Traj_df_1112[1],1,function(z) !any(z==0)),]
# 
# Traj_df_1113 <- Traj_df_1113 %>% 
#   mutate(V = sqrt(VX^2+VY^2)) %>% 
#   mutate(V_kph = V*FN*3.6) %>% 
#   mutate(V_mps = V*FN) %>% 
#   mutate(VX_mps = VX*FN) %>% 
#   mutate(VY_mps = VY*FN)
# Traj_df_1113 <- Traj_df_1113[apply(Traj_df_1113[1],1,function(z) !any(z==0)),]
# 
# Traj_df_1114 <- Traj_df_1114 %>% 
#   mutate(V = sqrt(VX^2+VY^2)) %>% 
#   mutate(V_kph = V*FN*3.6) %>% 
#   mutate(V_mps = V*FN) %>% 
#   mutate(VX_mps = VX*FN) %>% 
#   mutate(VY_mps = VY*FN)
# Traj_df_1114 <- Traj_df_1114[apply(Traj_df_1114[1],1,function(z) !any(z==0)),]
# 
# Traj_df_1115 <- Traj_df_1115 %>% 
#   mutate(V = sqrt(VX^2+VY^2)) %>% 
#   mutate(V_kph = V*FN*3.6) %>% 
#   mutate(V_mps = V*FN) %>% 
#   mutate(VX_mps = VX*FN) %>% 
#   mutate(VY_mps = VY*FN)
# Traj_df_1115 <- Traj_df_1115[apply(Traj_df_1115[1],1,function(z) !any(z==0)),]
# 
# Traj_df_1116 <- Traj_df_1116 %>% 
#   mutate(V = sqrt(VX^2+VY^2)) %>% 
#   mutate(V_kph = V*FN*3.6) %>% 
#   mutate(V_mps = V*FN) %>% 
#   mutate(VX_mps = VX*FN) %>% 
#   mutate(VY_mps = VY*FN)
# Traj_df_1116 <- Traj_df_1116[apply(Traj_df_1116[1],1,function(z) !any(z==0)),]
# 
# Traj_df_1117 <- Traj_df_1117 %>% 
#   mutate(V = sqrt(VX^2+VY^2)) %>% 
#   mutate(V_kph = V*FN*3.6) %>% 
#   mutate(V_mps = V*FN) %>% 
#   mutate(VX_mps = VX*FN) %>% 
#   mutate(VY_mps = VY*FN)
# Traj_df_1117 <- Traj_df_1117[apply(Traj_df_1117[1],1,function(z) !any(z==0)),]
# 
# Traj_df_1118 <- Traj_df_1118 %>% 
#   mutate(V = sqrt(VX^2+VY^2)) %>% 
#   mutate(V_kph = V*FN*3.6) %>% 
#   mutate(V_mps = V*FN) %>% 
#   mutate(VX_mps = VX*FN) %>% 
#   mutate(VY_mps = VY*FN)
# Traj_df_1118 <- Traj_df_1118[apply(Traj_df_1118[1],1,function(z) !any(z==0)),]
# 
# Traj_df_1119 <- Traj_df_1119 %>% 
#   mutate(V = sqrt(VX^2+VY^2)) %>% 
#   mutate(V_kph = V*FN*3.6) %>% 
#   mutate(V_mps = V*FN) %>% 
#   mutate(VX_mps = VX*FN) %>% 
#   mutate(VY_mps = VY*FN)
# Traj_df_1119 <- Traj_df_1119[apply(Traj_df_1119[1],1,function(z) !any(z==0)),]
# 
# Traj_df_11110 <- Traj_df_11110 %>% 
#   mutate(V = sqrt(VX^2+VY^2)) %>% 
#   mutate(V_kph = V*FN*3.6) %>% 
#   mutate(V_mps = V*FN) %>% 
#   mutate(VX_mps = VX*FN) %>% 
#   mutate(VY_mps = VY*FN)
# Traj_df_11110 <- Traj_df_11110[apply(Traj_df_11110[1],1,function(z) !any(z==0)),]



#Filter Objects
# 1111
Traj_df_1111 <- as.tibble(Traj_df_1111)
Traj_df_1111$Obj <- as.character(Traj_df_1111$Obj)
objects_1111$Obj <- factor(objects_1111$Obj)


Traj_Obj_1111 <- Traj_df_1111 %>% 
  dplyr::filter(Traj_df_1111$Obj %in% objects_1111$Obj) %>% 
  mutate(comp = "1111")

Traj_Obj_1111$Obj <- factor(Traj_Obj_1111$Obj)

levels(Traj_Obj_1111$Obj) <- levels(objects_1111$Obj)
Traj_Obj_1111x <- inner_join(Traj_Obj_1111,objects_1111, by = "Obj")

# # 1112
# Traj_df_1112 <- as.tibble(Traj_df_1112)
# Traj_df_1112$Obj <- as.character(Traj_df_1112$Obj)
# objects_1112$Obj <- factor(objects_1112$Obj)
# 
# 
# Traj_Obj_1112 <- Traj_df_1112 %>% 
#   dplyr::filter(Traj_df_1112$Obj %in% objects_1112$Obj) %>% 
#   mutate(comp = "1112")
# 
# Traj_Obj_1112$Obj <- factor(Traj_Obj_1112$Obj)
# 
# levels(Traj_Obj_1112$Obj) <- levels(objects_1112$Obj)
# Traj_Obj_1112x <- inner_join(Traj_Obj_1112,objects_1112, by = "Obj")
# 
# # 1113
# 
# Traj_df_1113 <- as.tibble(Traj_df_1113)
# Traj_df_1113$Obj <- as.character(Traj_df_1113$Obj)
# objects_1113$Obj <- factor(objects_1113$Obj)
# 
# 
# Traj_Obj_1113 <- Traj_df_1113 %>% 
#   dplyr::filter(Traj_df_1113$Obj %in% objects_1113$Obj) %>% 
#   mutate(comp = "1113")
# 
# Traj_Obj_1113$Obj <- factor(Traj_Obj_1113$Obj)
# 
# levels(Traj_Obj_1113$Obj) <- levels(objects_1113$Obj)
# Traj_Obj_1113x <- inner_join(Traj_Obj_1113,objects_1113, by = "Obj")
# 
# # 1114
# 
# Traj_df_1114 <- as.tibble(Traj_df_1114)
# Traj_df_1114$Obj <- as.character(Traj_df_1114$Obj)
# objects_1114$Obj <- factor(objects_1114$Obj)
# 
# 
# Traj_Obj_1114 <- Traj_df_1114 %>% 
#   dplyr::filter(Traj_df_1114$Obj %in% objects_1114$Obj) %>% 
#   mutate(comp = "1114")
# 
# Traj_Obj_1114$Obj <- factor(Traj_Obj_1114$Obj)
# 
# levels(Traj_Obj_1114$Obj) <- levels(objects_1114$Obj)
# Traj_Obj_1114x <- inner_join(Traj_Obj_1114,objects_1114, by = "Obj")
# 
# # 1115
# 
# 
# Traj_df_1115 <- as.tibble(Traj_df_1115)
# Traj_df_1115$Obj <- as.character(Traj_df_1115$Obj)
# objects_1115$Obj <- factor(objects_1115$Obj)
# 
# 
# Traj_Obj_1115 <- Traj_df_1115 %>% 
#   dplyr::filter(Traj_df_1115$Obj %in% objects_1115$Obj) %>% 
#   mutate(comp = "1115")
# 
# Traj_Obj_1115$Obj <- factor(Traj_Obj_1115$Obj)
# 
# levels(Traj_Obj_1115$Obj) <- levels(objects_1115$Obj)
# Traj_Obj_1115x <- inner_join(Traj_Obj_1115,objects_1115, by = "Obj")
# 
# # 1116
# 
# 
# Traj_df_1116 <- as.tibble(Traj_df_1116)
# Traj_df_1116$Obj <- as.character(Traj_df_1116$Obj)
# objects_1116$Obj <- factor(objects_1116$Obj)
# 
# 
# Traj_Obj_1116 <- Traj_df_1116 %>% 
#   dplyr::filter(Traj_df_1116$Obj %in% objects_1116$Obj) %>% 
#   mutate(comp = "1116")
# 
# Traj_Obj_1116$Obj <- factor(Traj_Obj_1116$Obj)
# 
# levels(Traj_Obj_1116$Obj) <- levels(objects_1116$Obj)
# Traj_Obj_1116x <- inner_join(Traj_Obj_1116,objects_1116, by = "Obj")
# 
# 
# 
# # 1117
# 
# 
# Traj_df_1117 <- as.tibble(Traj_df_1117)
# Traj_df_1117$Obj <- as.character(Traj_df_1117$Obj)
# objects_1117$Obj <- factor(objects_1117$Obj)
# 
# 
# Traj_Obj_1117 <- Traj_df_1117 %>% 
#   dplyr::filter(Traj_df_1117$Obj %in% objects_1117$Obj) %>% 
#   mutate(comp = "1117")
# 
# Traj_Obj_1117$Obj <- factor(Traj_Obj_1117$Obj)
# 
# levels(Traj_Obj_1117$Obj) <- levels(objects_1117$Obj)
# Traj_Obj_1117x <- inner_join(Traj_Obj_1117,objects_1117, by = "Obj")
# 
# # 1118
# 
# 
# Traj_df_1118 <- as.tibble(Traj_df_1118)
# Traj_df_1118$Obj <- as.character(Traj_df_1118$Obj)
# objects_1118$Obj <- factor(objects_1118$Obj)
# 
# 
# Traj_Obj_1118 <- Traj_df_1118 %>% 
#   dplyr::filter(Traj_df_1118$Obj %in% objects_1118$Obj) %>% 
#   mutate(comp = "1118")
# 
# Traj_Obj_1118$Obj <- factor(Traj_Obj_1118$Obj)
# 
# levels(Traj_Obj_1118$Obj) <- levels(objects_1118$Obj)
# Traj_Obj_1118x <- inner_join(Traj_Obj_1118,objects_1118, by = "Obj")
# 
# #1119
# 
# 
# Traj_df_1119 <- as.tibble(Traj_df_1119)
# Traj_df_1119$Obj <- as.character(Traj_df_1119$Obj)
# objects_1119$Obj <- factor(objects_1119$Obj)
# 
# 
# Traj_Obj_1119 <- Traj_df_1119 %>% 
#   dplyr::filter(Traj_df_1119$Obj %in% objects_1119$Obj) %>% 
#   mutate(comp = "1119")
# 
# Traj_Obj_1119$Obj <- factor(Traj_Obj_1119$Obj)
# 
# levels(Traj_Obj_1119$Obj) <- levels(objects_1119$Obj)
# Traj_Obj_1119x <- inner_join(Traj_Obj_1119,objects_1119, by = "Obj")
# 
# 
# # 11110
# 
# 
# Traj_df_11110 <- as.tibble(Traj_df_11110)
# Traj_df_11110$Obj <- as.character(Traj_df_11110$Obj)
# objects_11110$Obj <- factor(objects_11110$Obj)
# 
# 
# Traj_Obj_11110 <- Traj_df_11110 %>% 
#   dplyr::filter(Traj_df_11110$Obj %in% objects_11110$Obj) %>% 
#   mutate(comp = "11110")
# 
# Traj_Obj_11110$Obj <- factor(Traj_Obj_11110$Obj)
# 
# levels(Traj_Obj_11110$Obj) <- levels(objects_11110$Obj)
# Traj_Obj_11110x <- inner_join(Traj_Obj_11110,objects_11110, by = "Obj")



#Merged DataFrame 
Traj_Obj_191x_merged <- full_join(Traj_Obj_1111x,Traj_Obj_1112x)
# Traj_Obj_111x_merged <- full_join(Traj_Obj_111x_merged,Traj_Obj_1113x)
# Traj_Obj_111x_merged <- full_join(Traj_Obj_111x_merged,Traj_Obj_1114x)
# Traj_Obj_111x_merged <- full_join(Traj_Obj_111x_merged,Traj_Obj_1115x)
# Traj_Obj_111x_merged <- full_join(Traj_Obj_111x_merged,Traj_Obj_1116x)
# Traj_Obj_111x_merged <- full_join(Traj_Obj_111x_merged,Traj_Obj_1117x)
# Traj_Obj_111x_merged <- full_join(Traj_Obj_111x_merged,Traj_Obj_1118x)
# Traj_Obj_111x_merged <- full_join(Traj_Obj_111x_merged,Traj_Obj_1119x)
# Traj_Obj_111x_merged <- full_join(Traj_Obj_111x_merged,Traj_Obj_11110x)


Traj_Obj_191x_merged <- Traj_Obj_191x_merged %>%
  mutate(Obj_ID = paste(comp, Obj, sep = "_"))

