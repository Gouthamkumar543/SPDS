library(ggplot2)
library(emojifont)

df = data.frame(
  category= c("a","b","c","d","e"),
  value=c(50,30,70,40,60)
)

#view the data
print("sample data :")
print(df)

#ggplot pictogram
ggplot(df,aes(x= category,y=value))+
  geom_text(aes(label = emoji('apple')),family="Emojione",size = 10)+
  ggtitle("pictogram repersentation")+
  theme_minimal()

#pie chart
pie(df$value,labels = paste(df$category,round(df$value/sum(df$value)*100,1),"%"),
    main = "pie chart",col=rainbow(length(df$category)))

#bar
ggplot(df,aes(x=category,y=value,fill = category))+
  geom_bar(stat="identity")+
  ggtitle("bar chart")+
  theme_minimal()