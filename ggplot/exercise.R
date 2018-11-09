
#import the data
mov <- read.csv("Section6-Homework-Data.csv")

#filter out the data
filt = (mov$Genre == "action") | (mov$Genre == "adventure") | (mov$Genre == "animation") | (mov$Genre == "comedy") | (mov$Genre == "drama") 

filt2 = mov$Studio %in% c("Buena Vista Studios","WB","Fox","Universal","Sony","Paramount Pictures")

mov2 <- mov[filt & filt2,]


head(mov2)

#plot the graph
p <- ggplot(data=mov2,aes(x=Genre,y=Gross...US))

q <- p +   geom_jitter(aes(size=Budget...mill.,
                    color=Studio)) + 
      geom_boxplot(alpha=0.7,outlier.colour = NA)

q <- q + 
      xlab('Genre') +
      ylab('Gross % US') +
      ggtitle('Domestic Gross % by Genre')


q <- q + 
  theme(
    axis.title.x = element_text(colour = "Blue",size=30),
    axis.title.y = element_text(colour = "Blue",size=30),
    axis.text.x = element_text(size=20),
    axis.text.y = element_text(size=20),
    
    plot.title = element_text(size=40),
    
    legend.title = element_text(size=20),
    legend.text = element_text(size=20),
    
    text = element_text(family = "Comic Sans MS")
    
  )

q$labels$size <- "Budget $M"
q