setwd("C:/Users/gouth/Desktop/Goutham/SPDS/DataSet")
library(readxl)
data = read_excel("Wine_Quality_Data.xlsx")
head(data)

quality <- data$quality
quality_freq <- table(quality)

#Pictogram
library(ggplot2)
df = as.data.frame(quality_freq)
ggplot(df, aes(x = quality, y = Freq)) +
  geom_text(aes(label = strrep(".", Freq/10)), size = 6) +
  labs(title = "Pictogram of Wine Quality", x = "Quality", y = "Frequency") +
  theme_minimal()

#Pie Chart
pie(quality_freq,
    main="Pie Chart of Wine Quality Distribution",
    col=rainbow(length(quality_freq)))

#Bar Chart
barplot(quality_freq,
        main="Bar Chart of Wine Quality",
        xlab="Quality",
        ylab="Frequency",
        col="lightgreen")