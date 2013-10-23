pos = scan('positive-words.txt', what='character', comment.char=';')

neg = scan('negative-words.txt', what='character', comment.char=';')

Tweets.text<-kunal$text

analysis <- score.sentiment(Tweets.text, pos, neg)

table(analysis$score)

mean(analysis$score)
sentiment<-c(1:nrow(analysis))
analysis<-cbind(analysis,sentiment)
analysis$sentiment<-as.factor(analysis$sentiment)
positive<-sum(analysis$sentiment=="Positive")
negative<-sum(analysis$sentiment=="Negative")
neutral<-sum(analysis$sentiment=="Neutral")
final<-data.frame(positive,negative,neutral)
colnames(final)<-c("Frequency")
hist(analysis$score,main="Number of tweets vs Sentiment Score",xlab="Sentiment Score",plot=TRUE,col="red",labels=T)
