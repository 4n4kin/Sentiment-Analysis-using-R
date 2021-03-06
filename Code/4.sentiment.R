sentiment<-function(directory=getwd(),file="input.txt"){
  setwd=(directory)
  pos = scan('positive-words.txt', what='character', comment.char=';')
  
  neg = scan('negative-words.txt', what='character', comment.char=';')
  
  analysis <- score.sentiment(file, pos, neg)
  
  pos.polarity=nrow(analysis[analysis$score>0,])/nrow(analysis[analysis$score!=0,])
  neg.polarity=nrow(analysis[analysis$score<0,])/nrow(analysis[analysis$score!=0,])
  
  print("Polarity:")
  print("Positive:")
  print(pos.polarity)
  print("Negative:")
  print(neg.polarity)
  
  table=table(analysis$score)
  mean=mean(analysis$score)
  
  analysis<-lable(analysis)
  graph<-plot(analysis)
  print(graph)
  return(data.frame(analysis))
}