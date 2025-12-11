setwd("C:/Users/gouth/Desktop/Goutham/SPDS/R/DataSet")
data = read.csv("Salary_Data.csv")
head(data)

#ScatterPlot
ggplot(data, aes(x = exp, y = salary)) +
  geom_point(color = "darkgreen") +
  labs(title = "Scatter Plot - Salary Vs Experience",
       x = "Years Experience",
       y = "Salary")