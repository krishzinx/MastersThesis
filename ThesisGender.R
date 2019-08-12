library(tidyr)
genderCSV <-read.csv("C:/Users/krish/Desktop/thesis/gender-statistics-of-rrateme/gender.csv")

genderCSV2 <-(separate_rows(genderCSV,comment_replies,sep = ',' ))
write.csv(genderCSV2, 'C:/Users/krish/Desktop/thesis/gender-statistics-of-rrateme/gender1.csv')
