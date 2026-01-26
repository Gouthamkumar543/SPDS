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

#Ogive Curve
breaks = seq(min(data$salary), max(data$salary), length.out = 8)
salary_class = cut(data$salary, breaks = breaks, right = TRUE, include.lowest = TRUE)
freq_table = table(salary_class)
cum_freq = cumsum(freq_table)
midpoints = (head(breaks, -1) + tail(breaks, -1)) / 2

plot(midpoints, cum_freq, type = "o", col = "blue",
     xlab = "Salary", ylab = "Cumulative Frequency",
     main = "Ogive Curve for Salary Data")
grid()