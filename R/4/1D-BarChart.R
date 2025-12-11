setwd("C:/Users/gouth/Desktop/Goutham/SPDS/R/DataSet")
data = read.csv("Salary_Data.csv")
head(data)

#Bar Chart
ggplot(data, aes(x = factor(exp))) +
  geom_bar(fill = "skyblue") +
  labs(title = "Bar Chart - Count of Employees by Experience",
       x = "Years Experience",
       y = "Count of people with same exp")