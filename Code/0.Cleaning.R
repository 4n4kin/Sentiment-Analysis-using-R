#Text Cleaning: tm Code

library(tm)
text1$text->text
sample<- Corpus(VectorSource(text),readerControl=list(language="english"))
tm_map(sample, function(x) iconv(enc2utf8(x), sub = "byte"))
sample<-tm_map(sample,tolower)
sample<-tm_map(sample,removePunctuation)
sample <- tm_map(sample, stripWhitespace)
sample<-tm_map(sample,removeNumbers)
sample<-tm_map(sample,removeWords,stopwords('smart'))
sample <- tm_map(sample, stripWhitespace)
#inspect(sample[1:3])

#tm_map(sample,stemDocument)
sample <- tm_map(sample, stripWhitespace)
#inspect(sample[1:3])
dtm <- DocumentTermMatrix(sample)
#inspect(sample[1:3])

print("Preparing for lda")
library('lda')
sample->q
lexicalize(q)->a
a.documents<-a$documents
a.vocab<-a$vocab