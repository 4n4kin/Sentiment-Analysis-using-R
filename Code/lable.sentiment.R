#Labeling Sentiment
lable<-function(analysis)
{
  sentiment<-c(1:nrow(analysis))
  analysis<-cbind(analysis,sentiment)
  for(i in 1:nrow(analysis)){
  if(analysis$score[i]==0){
    analysis$sentiment[i]<-"Neutral"
  }
  if(analysis$score[i]<0){
    analysis$sentiment[i]<-"Negative"
  }
  if(analysis$score[i]>0){
    analysis$sentiment[i]<-"Positive"
  }
}
return(analysis)
}