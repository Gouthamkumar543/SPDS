library(ggplot2)
library(reshape2)
library(ggcorrplot)
library(lattice)
library(plotly)
library(lubridate)

# Gantt chart
gantt_data = data.frame(
  task = c("Task A","Task B","Task C"),
  Start = as.Date(c("2024-01-01", "2024-01-05", "2024-01-10")),
  End = as.Date(c("2024-01-10", "2024-01-15", "2024-01-20"))
)

ggplot(gantt_data,aes(y= task , xmin = Start, xmax = End))+
  geom_errorbar(height = 0.4, col = "brown")+
  ggtitle("Gantt Chart for Tasks")+
  xlab("Date")+
  ylab("Task")

# Heat Map (sales Data)
sales_data = matrix(c(50, 60, 70, 80, 
                      55, 65, 75, 85, 
                      60, 70, 80, 90, 
                      65, 75, 85, 95),
                    nrow = 4,
                    byrow = TRUE
                    )
rownames(sales_data) = c("North", "South", "East", "West")
colnames(sales_data) = c("Q1", "Q2", "Q3", "Q4")

heatmap(sales_data, main =  "Sales Heat map", col = heat.colors((20)))

#Box-Whisker plot (Temperature Data)
temperature_data = data.frame(
  Day = c("Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"),
  Temperature = c(25, 28, 30, 27, 32, 35, 33)
)

ggplot(temperature_data,aes(x=Day , y = Temperature))+
  geom_boxplot(fill = "red")+
  ggtitle("Temperature Box-Whisker Plot")+
  xlab("Day")+
  ylab("Temperature")

#Area chart(stock price trends)
stock_data = data.frame(
  Day = 1:5,
  Price = c(00, 110, 120, 130, 140)
)

ggplot(stock_data,aes(x = Day, y = Price))+
  geom_area(fill = "skyblue", alpha = 0.5)+
  ggtitle("Stock Price Trends (Area Chart)")+
  xlab("Day")+
  ylab("Price")

#Correlation Matrix (Relationships Between Variables)
cor_data = data.frame(
  x1 = c(1,0.8,0.6),
  x2 = c(0.8,1,0.7),
  x3 = c(0.6,0.7,1)
)

corr_matrix = cor(cor_data)
ggcorrplot(corr_matrix, method = "circle", lab = TRUE, title = "Correlation Matrix")