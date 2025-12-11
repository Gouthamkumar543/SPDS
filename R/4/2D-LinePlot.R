setwd("C:/Users/gouth/Desktop/Goutham/SPDS/R/DataSet")
data = read.csv("Salary_Data.csv")
head(data)

#LinePlot
ggplot(data, aes(x = exp, y = salary)) +
  geom_line(color = "blue") +
  geom_point(color = "red") +
  labs(title = "Line Plot - Salary vs Experience",
       x = "Years Experience",
       y = "Salary")