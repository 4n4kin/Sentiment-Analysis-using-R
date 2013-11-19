#Labeling Sentiment
lable<-function(score.df)
{
  sentiment<-c(1:nrow(score.df))
  nature<-c(1:nrow(score.df))
  score.df<-cbind(score.df,sentiment,nature)
  for(i in 1:nrow(score.df)){
  if(score.df$score[i]==0){
    score.df$sentiment[i]<-"Neutral"
    score.df$nature[i]<-0
  }
  if(score.df$score[i]<0){
    score.df$sentiment[i]<-"Negative"
    score.df$nature[i]<--1
  }
  if(score.df$score[i]>0){
    score.df$sentiment[i]<-"Positive"
    score.df$nature[i]<-1
  }
}
return(score.df)
}