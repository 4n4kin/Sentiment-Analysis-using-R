pos = scan('positive-words.txt', what='character', comment.char=';')

neg = scan('negative-words.txt', what='character', comment.char=';')

Tweets.text<-l$text

analysis <- score.sentiment(Tweets.text, pos, neg)

table(analysis$score)

mean(analysis$score)
sentiment<-c(1:nrow(analysis))
analysis<-cbind(analysis,sentiment)
colnames(final)<-c("Frequency")
pos.polarity=nrow(analysis[analysis$score>0,])/nrow(analysis)
neg.polarity=nrow(analysis[analysis$score<0,])/nrow(analysis)
hist(analysis$score,main="Number of tweets vs Sentiment Score",xlab="Sentiment Score",plot=TRUE,col=c("red","pink","orange","blue","lightgreen","green","darkgreen"),labels=T)
par(bg="grey")