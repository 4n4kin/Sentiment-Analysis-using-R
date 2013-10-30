#plotting
plot<-function(analysis){
  require(ggplot2)
  Positive<-sum(analysis$nature==1)
  Negative<-sum(analysis$nature==-1)
  Neutral<-sum(analysis$nature==0)
  final<-data.frame(rbind(Positive,Neutral,Negative))
  final<-cbind(rownames(final),final)
  colnames(final)<-c("Sentiment","Frequency")
  as.data.frame(final)->final
  print(final)
  return(ggplot(data=final, aes(x=Sentiment, y=Frequency,width=0.3, fill=Sentiment)) + geom_bar(stat="identity"))
}