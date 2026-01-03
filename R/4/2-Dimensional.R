setwd("C:/Users/gouth/Desktop/Goutham/SPDS/R/DataSet")
data = read.csv("Salary_Data.csv")
head(data)

#Histogram
ggplot(data, aes(x = salary)) +
  geom_histogram(bins = 10, 
                 fill = "orange", 
                 color = "purple") +
  labs(title = "Histogram of Salary",
       x = "Salary",
       y = "Frequency")

#LinePlot
ggplot(data, aes(x = exp, y = salary)) +
  geom_line(color = "blue") +
  geom_point(color = "red") +
  labs(title = "Line Plot - Salary vs Experience",
       x = "Years Experience",
       y = "Salary")

#ScatterPlot
ggplot(data, aes(x = exp, y = salary)) +
  geom_point(color = "darkgreen") +
  labs(title = "Scatter Plot - Salary Vs Experience",
       x = "Years Experience",
       y = "Salary")

#Frequency Curve
ggplot(data, aes(x = salary)) +
  geom_density(color = "red", fill = "pink", alpha = 0.4) +
  labs(title = "Frequency Curve (Density Plot)",
       x = "Salary",
       y = "Density")

#Frequency Polygon
ggplot(data, aes(x = salary)) +
  geom_freqpoly(bins = 10, color = "blue")+
  labs(title = "Frequency Polygon of Salary",
       x = "Salary",
       y = "Frequency")