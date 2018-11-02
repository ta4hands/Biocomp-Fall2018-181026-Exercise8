rm(list=ls())
setwd("/Users/ta4ha/Documents/Biocomputing/Biocomp-Fall2018-181026-Exercise8")

# Problem 1
# install.pakcages('ggplot2')
# install.packages('dplyr')
library(dplyr)
library(ggplot2)
score <- read.table("UWvMSU_1-22-13.txt",header=TRUE)

score <- score %>%
  group_by(team) %>%
  mutate(Tot_Score=cumsum(score))

ggplot(score) +
  geom_line(aes(x = time, y = Tot_Score, color = team)) 
