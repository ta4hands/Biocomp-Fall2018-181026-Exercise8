rm(list=ls())
setwd("/Users/ta4ha/Documents/Biocomputing/Biocomp-Fall2018-181026-Exercise8")

# Problem 1

# Download packages necessary to plot data
# install.pakcages('ggplot2')
# install.packages('dplyr')

# Load packages
library(dplyr)
library(ggplot2)

# Load game score data
score <- read.table("UWvMSU_1-22-13.txt",header=TRUE)

# Pipe data, grouping by team and adding an extra column for total score
score <- score %>%
  group_by(team) %>%
  mutate(Tot_Score=cumsum(score))

# Load data into ggplot, graph lines, edit with aesthetic
ggplot(score) +
  geom_line(aes(x = time, y = Tot_Score, color = team)) 


# Problem 2

# Generate a radnom number
num <- sample(1:100,1)

# When the number guessed does not equal the number generated...
while(guess != num){
  # Prompts user to guess a number to start
  guess <- readline(prompt="Guess a number between 1 and 100: ")
  #If the guess is equal to the number, prins "correct"
  if (guess == num)
  {
    print("Correct!")
  }
  else if (guess < num){
    print("Bigger!")
  }
  else if (guess > num){
    print("Smaller!")
    # Loops until the guess is equal to the number
  }
}
