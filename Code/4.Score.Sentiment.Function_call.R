pos = scan('positive-words.txt', what='character', comment.char=';')

neg = scan('negative-words.txt', what='character', comment.char=';')

Tweets.text<-text

analysis <- score.sentiment(Tweets.text, pos, neg)

pos.polarity=nrow(analysis[analysis$score>0,])/nrow(analysis[analysis$score!=0,])
neg.polarity=nrow(analysis[analysis$score<0,])/nrow(analysis[analysis$score!=0,])

table(analysis$score)
mean(analysis$score)

analysis<-lable(analysis)
plot(analysis)