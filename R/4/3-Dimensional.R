setwd("C:/Users/gouth/Desktop/Goutham/SPDS/R/DataSet")
data = read.csv("Salary_Data.csv")
head(data)

#Gantt Chart
library(ggplot2)

gantt <- data.frame(
  Task = c("Collect Data", "Clean Data", "Model Building", "Evaluation"),
  Start = as.Date(c("2024-01-01", "2024-01-10", "2024-01-20", "2024-02-01")),
  End   = as.Date(c("2024-01-09", "2024-01-19", "2024-01-31", "2024-02-10"))
)

ggplot(gantt, aes(x = Start, xend = End, y = Task, yend = Task)) +
  geom_segment(size = 8, color = "steelblue") +
  labs(title = "Gantt Chart for Data Science Project",x = "Date", y = "Task") +
  theme_minimal()

#Box & Whisker Plot
ggplot(data, aes(y = salary)) +
  geom_boxplot(fill = "lightgreen")+
  labs(title = "Boxplot of Salary",y = "Salary")

#Area Chart
ggplot(data, aes(x = exp, y = salary)) +
  geom_area(fill = "cyan", alpha = 0.4) +
  geom_line(color = "blue") +
  labs(title = "Area Chart - Salary vs Experience",
       x = "Years Experience",
       y = "Salary")

#Correlation Matrix
library(corrplot)

numeric_data = data[, c("exp", "Age", "salary")]
corr_matrix = cor(numeric_data)

corrplot(corr_matrix, method = "circle",
         type = "upper",
         tl.col = "black",
         tl.srt = 45,
         addCoef.col = "black",
         col = colorRampPalette(c("red", "white", "blue"))(200))

#Heat Map
library(ggplot2)

cor_data = as.data.frame(as.table(corr_matrix))
ggplot(cor_data, aes(Var1, Var2, fill = Freq)) +
  geom_tile() +
  scale_fill_gradient(low = "white", high = "red") +
  labs(title = "Heatmap of Correlations",
       x = "Variables", 
       y = "Variables")