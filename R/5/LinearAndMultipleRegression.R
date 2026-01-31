#Loading heart dataSet
setwd("C:/Users/gouth/Desktop/Goutham/SPDS/DataSet")
library(readxl)
heart = read_excel("heart.xlsx")
head(heart)

#SIMPLE LINEAR REGRESSION
model = lm(chol ~ age, data = heart)
summary(model)

plot(heart$age, heart$chol,
     xlab = "Age",
     ylab = "Cholesterol",
     main = "Simple Linear Regression")
abline(model, col = "blue")

#MULTIPLE LINEAR REGRESSION
model <- lm(chol ~ age + trtbps + thalachh + oldpeak, data = heart)
summary(model)
par(mfrow = c(2,2))
plot(model)