setwd("C:/Users/gouth/Desktop/Goutham/SPDS/R/DataSet")
data = read.csv("Salary_Data.csv")
head(data)

#Frequency Polygon
ggplot(data, aes(x = salary)) +
  geom_freqpoly(bins = 10, color = "blue")+
  labs(title = "Frequency Polygon of Salary",
       x = "Salary",
       y = "Frequency")