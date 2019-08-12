MyData <- read.csv(file="C:/Users/krish/Downloads/DataCollection1.csv", header=TRUE, sep=",")
MyData
MyData1 <- read.csv(file="C:/Users/krish/Downloads/DataCollection2.csv", header=TRUE, sep=",")
polite.data <- politeness::politeness(MyData1$Comment, parser="spacy")
polite.holdout<- politeness::politeness(MyData1$Replies, parser="spacy")
project<-politenessProjection(polite.data,
                              $condition,
                              polite.holdout)
for (row in 1:nrow(MyData1)) {
  Replies <- MyData1[row, "Replies"]
  Reply_vector <- stri_split_lines(Replies, omit_empty = FALSE)
  pol_score <- vector()
  for reply in Reply_vector:
    pol_score <- politeness::politenessProjection(polite.data,
                                  phone_offers$condition,
                                  reply)
  print(pol_score)
  print(mean(pol_score))
}
