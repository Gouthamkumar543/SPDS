setwd("C:/Users/gouth/Desktop/Goutham/SPDS/DataSet")
library(readxl)
data = read_excel("Wine_Quality_Data.xlsx")
head(data)

#Histogram
hist(data$alcohol,
     main="Histogram of Alcohol Content",
     xlab="Alcohol",
     col="orange")

#Line Plot
plot(data$alcohol, type="l",
     main="Line Plot of Alcohol Content",
     xlab="Wine Samples",
     ylab="Alcohol")

#Frequency Curve
ggplot(data, aes(x = alcohol)) +
  geom_density(color = "red", fill = "pink", alpha = 0.4) +
  labs(title = "Frequency Curve (Density Plot)",
       x = "Alcohol",
       y = "Density")

#Frequency Polygon
ggplot(data, aes(x = alcohol)) +
  geom_freqpoly(bins = 10, color = "blue")+
  labs(title = "Frequency Polygon of Alcohol",
       x = "Alcohol",
       y = "Frequency")

#Ogive Curve
alcohol_sorted = sort(data$alcohol)
cum_freq = seq_along(alcohol_sorted)
plot(alcohol_sorted, cum_freq, type="l",
     main="Ogive Curve of Alcohol",
     xlab="Alcohol",
     ylab="Cumulative Frequency")

#Scatter Plot
plot(data$alcohol, data$quality,
     main="Scatter Plot: Alcohol vs Quality",
     xlab="Alcohol",
     ylab="Quality")