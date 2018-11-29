library(R.matlab)
library(purrr)
library(repurrrsive)
library(listviewer)
library(magrittr)
library(jsonlite)
library(tidyverse)
con <- "D:/Brooklyn_bridge/Brk_R_Project/Brk/Data/Scene1/Day1/Brk-1-1-1-1-ti-objects.mat"
Brk_objects_1111 <- readMat(con)
str(Brk_objects_1111, list.len = 1)
listviewer::jsonedit(Brk_objects_1111, mode = "view")
View(Brk_objects_1111)
Brk_objects_1111_1 <- Brk_objects_1111$objs[[1]]
Brk_objects_1111_1[[1]]
x <- map(Brk_objects_1111_1,`[`, c(5,6))
x[[1]]
str(x)
str(x[[1]])

map(x[[1]])
