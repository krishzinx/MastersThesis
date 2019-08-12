library("readxl")
RedditData <- read_xlsx("C:/Users/krish/Desktop/thesis/gender-statistics-of-rrateme/genderRepliesPrediction.xlsx", sheet = "Sheet3")
with(RedditData,interaction.plot(comment_author_gender,comment_parent_gender,predictions))
