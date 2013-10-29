pos = scan('positive-words.txt', what='character', comment.char=';')

neg = scan('negative-words.txt', what='character', comment.char=';')

Tweets.text<-kunal$text

analysis <- score.sentiment(Tweets.text, pos, neg)

table(analysis$score)

mean(analysis$score)
source("lable.sentiment.R")
lable(analysis)->analysis.final
p<-hist(analysis.final$score,main="Number of tweets vs Sentiment Score",xlab="Sentiment Score",plot=TRUE,col=c("red","orange","lightyellow","skyblue","lightgreen","green","darkgreen"),labels=T)