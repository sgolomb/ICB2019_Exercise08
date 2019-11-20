#Exercise08

#Question 1
UWvsMSU.txt <- read.delim("UWvMSU_1-22-13.txt")
UWvsMSU.df <- as.data.frame(UWvsMSU.txt)

#create dataframe with cumulative score for each team after they score 
#first separate UW and MSU into separate dfs
UW <- subset(UWvsMSU.df, UWvsMSU.df$team == "UW")
MSU <- subset(UWvsMSU.df, UWvsMSU.df$team == "MSU")
#loop through team df to generate a vector of the cumulative score throughout the game for that team
UWscore <- c(UW$score)
UWcumvec <- numeric(length(UWscore))
for(i in 1:length(UWscore)){
  UWcumvec[i] <- sum(UWscore[1:i])
}
UW["cumulative"] <- UWcumvec
#repeat for MSU scores
MSUscore <- c(MSU$score)
MSUcumvec <- numeric(length(MSUscore))
for(i in 1:length(MSUscore)){
  MSUcumvec[i] <- sum(MSUscore[1:i])
}
MSU["cumulative"] <- MSUcumvec

#combine MSU and UW dfs
merged <- rbind(UW,MSU)

#plot cumulative team scores throughout game
library(ggplot2)
game_plot <- ggplot(merged, aes(x=time, y=cumulative))
game_plot+geom_line(aes(color=team))+xlab("Time")+ylab("Cumulative Score")+
  scale_color_manual(values=c("darkgreen", "red"))

#Question 2
#number game
#create a vector containing numbers 1 through 100
numbers <- (1:100)
#choose the answer to the game
answer <- sample(numbers, 1)
#player enters guess
player_guess <- 50
player_guess =   

number_result <- readline(prompt = "Guess a number between 1 and 100")
player_guess <- 0
answer <- sample(seq(1,100), size=1)

player_guess=number_result


number_game <- function(player_guess)
  



if(player_guess > answer){
  print("lower")
}else if(player_guess < answer){
  print("higher")
}else if(player_guess == answer){
  print("correct!")
}else{
  print("Guess again")
}

number_game <- function(player_guess){
  if(player_guess > answer){
    print("lower")
  }else if(player_guess < answer){
    print("higher")
  }else if(player_guess == answer){
    print("correct!")
  }else{
    print("Guess again")
  }
}


number_game <- function(player_guess){
  
  if(player_guess > answer){
    print("lower")
  }else if(player_guess < answer){
    print("higher")
  }else if(player_guess == answer){
    print("correct!")
  }else{
    number_game(player_guess)
  }
}






