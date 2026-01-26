setwd("C:/Users/gouth/Desktop/Goutham/SPDS/DataSet")
library(readxl)
data = read_excel("Wine_Quality_Data.xlsx")
head(data)

#Gantt Chart
tasks = data.frame(task = c("Data Collection", "Data Cleaning", "Visualization","Interpretation"),
                    start=c(1,3,5,7),end=c(2,4,6,8))
plot(tasks$start, 1:4, type="n",
     xlab="Time", ylab="Tasks",
     yaxt="n", main="Gantt Chart")
axis(2, 1:4, tasks$task)
segments(tasks$start, 1:4, tasks$end, 1:4,lwd=5)

#Heat Map
cor_matrix = cor(data)
heatmap(cor_matrix)

#Box-Whisker Plot
boxplot(data$alcohol,
        main="Box Plot of Alcohol",
        col="pink")

#Area Chart
plot(data$alcohol, type="l")
polygon(c(1: length(data$alcohol),length(data$alcohol):1),
        c(data$alcohol, rep(0,length(data$alcohol))),
        col="lightblue")

#Correlation Matrix
print(cor_matrix)