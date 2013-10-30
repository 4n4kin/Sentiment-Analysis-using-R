#Labeling Sentiment
lable<-function(analysis)
{
  sentiment<-c(1:nrow(analysis))
  nature<-c(1:nrow(analysis))
  analysis<-cbind(analysis,sentiment,nature)
  for(i in 1:nrow(analysis)){
  if(analysis$score[i]==0){
    analysis$sentiment[i]<-"Neutral"
    analysis$nature[i]<-0
  }
  if(analysis$score[i]<0){
    analysis$sentiment[i]<-"Negative"
    analysis$nature[i]<--1
  }
  if(analysis$score[i]>0){
    analysis$sentiment[i]<-"Positive"
    analysis$nature[i]<-1
  }
}
return(analysis)
}