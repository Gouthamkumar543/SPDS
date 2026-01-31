#Spearman's Rank Correlation
before = c(88, 97, 112, 91, 85, 95, 98, 112, 133, 141)
after = c(85, 88, 100, 86, 79, 89, 90, 100, 126, 129)
diet_data = data.frame(Subject = 1:10, Before = before, After = after)
diet_data

result = cor.test(diet_data$Before, diet_data$After, method = "spearman")
result

#Karl Pearson Correlation
setwd("C:/Users/gouth/Desktop/Goutham/SPDS/DataSet")
library(readr)
data = read_csv("Boston_Housing Data.csv")
head(data)

cor_matrix = cor(data, method = "pearson")
print(cor_matrix)
round(cor_matrix, 2)

library(corrplot)
corrplot(cor_matrix, method = "color", type = "upper", tl.col = "black", tl.srt = 45)