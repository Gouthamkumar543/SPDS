setwd("C:/Users/gouth/Desktop/Goutham/SPDS/R/DataSet")
data = read.csv("Salary_Data.csv")
head(data)

library(ggplot2)

#Bar Chart
ggplot(data, aes(x = factor(exp))) +
  geom_bar(fill = "skyblue") +
  labs(title = "Bar Chart - Count of Employees by Experience",
       x = "Years Experience",
       y = "Count of people with same exp")

# Pie Chart
data$salary = cut(as.numeric(data$salary),
                  breaks = c(0, 40000, 80000, 130000),
                  labels = c("Low","Medium", "High"))
salary = table(data$salary)
pie(salary,
    main = "Pie Chart of Salary Categories",
    col = rainbow(3))

# Pictogram
ggplot(data, aes(x = factor(exp), y = factor(salary))) +
  geom_tile(aes(fill = salary), width = 0.9, height = 0.9) +
  labs(title = "Pictogram: Salary Representation",
       x = "Years of Experience",
       y = "Salary Count Icons")