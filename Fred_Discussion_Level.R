setwd("C:/Users/lisa8/OneDrive/桌面/112-2/生物數據分析的計算技能/Group project RPG")read.csv("Discussion_level.csv")
D <- read.csv("Discussion_level.csv")
str(D)

install.packages("pacman")
library(pacman
library(ggplot2)
library(dplyr)


p1 <- ggplot(D,
             aes(x = Year, y = DiscussionCounts, group = GameName, colour = GameName))+
             geom_line()
p1

### DiscussionCounts > 500 ###
D2 <- D[1:10, ]
p2 <- ggplot(D2,
             aes(x = Year, y = DiscussionCounts, group = GameName, colour = GameName))+
  geom_line()
p2

### DiscussionCounts < 100 ###
D3 <- D[11:40, ]
p3 <- ggplot(D3,
             aes(x = Year, y = DiscussionCounts, group = GameName, colour = GameName))+
  geom_line()
p3
