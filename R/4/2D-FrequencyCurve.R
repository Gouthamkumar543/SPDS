setwd("C:/Users/gouth/Desktop/Goutham/SPDS/R/DataSet")
data = read.csv("Salary_Data.csv")
head(data)

#Frequency Curve
ggplot(data, aes(x = salary)) +
  geom_density(color = "red", fill = "pink", alpha = 0.4) +
  labs(title = "Frequency Curve (Density Plot)",
       x = "Salary",
       y = "Density")