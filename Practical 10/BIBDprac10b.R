install.packages("tm")
require("tm")

my.corpus <- Corpus(DirSource("C:/Users/micha/Desktop/Sem 2 Practicals/BIBD/Practical 2/Text Files"))
my.corpus <- tm_map(my.corpus, removeWords, stopwords("english"))
my.tdm <- TermDocumentMatrix(my.corpus)
inspect(my.tdm)
my.df <- as.data.frame(inspect(my.tdm))
barplot(as.matrix(my.tdm))

barplot(as.matrix(my.tdm), col = c("#00eb07", "#57ef87", "#ed791a", "#5e5fff", "#1cf1c6", "#5e035b"))
