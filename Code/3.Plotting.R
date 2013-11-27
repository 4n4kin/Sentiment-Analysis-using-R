#plotting
plot<-function(score){
  require(ggplot2)
  Positive<-sum(score$nature==1)
  Negative<-sum(score$nature==-1)
  Neutral<-sum(score$nature==0)
  final<-data.frame(rbind(Positive,Neutral,Negative))
  final<-cbind(rownames(final),final)
  colnames(final)<-c("Sentiment","Frequency")
  as.data.frame(final)->final
  q<-ggplot(data=final, aes(x=Sentiment, y=Frequency,width=0.3,fill=Sentiment)) +
    geom_bar(stat="identity") +
    theme_bw()
  print(q)
  return(final)
}