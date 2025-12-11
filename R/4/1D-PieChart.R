setwd("C:/Users/gouth/Desktop/Goutham/SPDS/R/DataSet")
data = read.csv("Salary_Data.csv")
head(data)

# Pie Chart
data$salary = cut(as.numeric(data$salary),
                  breaks = c(0, 40000, 80000, 130000),
                  labels = c("Low","Medium", "High"))
salary = table(data$salary)
pie(salary,
    main = "Pie Chart of Salary Categories",
    col = rainbow(3))