#Exercise08
UWvsMSU.txt <- read.delim("UWvMSU_1-22-13.txt")
UWvsMSU.df <- as.data.frame(UWvsMSU.txt)
#create dataframe with cumulative score for each team after they score 
#first separate UW and MSU into separate dfs
UW <- subset(UWvsMSU.df, UWvsMSU.df$team == "UW")
MSU <- subset(UWvsMSU.df, UWvsMSU.df$team == "MSU")
#loop through each file to generate a cumulative score for each time the team scores
UW_Cumulative = 0
for(i in 1:nrow(UW)){
    UW_Cumulative <-UW$score[i] + UW_Cumulative
}
  
