library(ggplot2)
df = data.frame(student=1:8,
                study_hours= c(2,3,4,5,6,7,8,9),
                score=c(50,60,65,70,75,85,90,95))

#Histogram
hist(df$score,main="Histogram",xlab="Scores",col="orange",border="black")

#polygon
plot(df$study_hours,df$score,type = "o",col="skyblue",main="Polygon",xlab="studyhours",ylab="score")

#histogram with polygon
hist(df$score,freq = FALSE ,main = "Frequency polygon", xlab = "Scores", col = rgb(0.2,0.4,0.6,0.5),border = "black")
lines(density(df$score),col="blue",lwd=2)

#ogive curve
df_sorted = df[order(df$score),]
df_sorted$c_f = 1:nrow(df_sorted)
plot(df_sorted$score,df_sorted$c_f,type="o",main="ogive curve",xlab = "score", ylab= "Cumulative frequency",col="red")

#scatter plot
ggplot(df,aes(x=study_hours,y = score ))+ 
  geom_point(color="black",size=3) +
  geom_smooth(method="loess",se=FALSE,color="pink") +
  ggtitle("Scatter plot")+
  xlab("study")+
  ylab("Scores")+
  theme_minimal()