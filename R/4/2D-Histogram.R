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