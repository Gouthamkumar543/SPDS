setwd("C:/Users/gouth/Desktop/Goutham/SPDS/R/DataSet")
data = read.csv("Salary_Data.csv")
head(data)

# Pictogram
library(ggplot2)

data$salary = round(data$salary/5000)
ggplot(data,aes(x = exp, y = salary))+
  geom_tile(aes(fill = salary), width = 0.9, height = 0.9)+
  labs(title = "Pictogram: Salary Representation",
       x = "Years of Experience", 
       y = "Salary Count Icons")