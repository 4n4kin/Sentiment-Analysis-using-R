pos = scan('positive-words.txt', what='character', comment.char=';')

neg = scan('negative-words.txt', what='character', comment.char=';')

Tweets.text<-q$text[1:2000]

analysis <- score.sentiment(Tweets.text, pos, neg)

table(analysis$score)

mean(analysis$score)

hist(analysis$score,main="Number of tweets vs Sentiment Score",xlab="Sentiment Score",plot=TRUE,col="red",labels=T)