i=1
while (i < nrow(analysis) {
  if(analysis$score[i]>0){analysis$sentiment[i]<-"positive"}
  i<-i+1
}