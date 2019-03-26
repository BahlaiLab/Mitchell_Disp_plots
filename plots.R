#read data in

jennings<-read.csv(file="jennings.csv", header=TRUE)

#had to use a dummy scale to make the simulations work in programita
#let's correct that now

jennings$dist<-jennings$Scale/2

library(ggplot2)

jennings.plot<- ggplot(jennings, aes(x=dist, y=g12r))+
  #first line
  geom_line(size=1, color="blue")+
  geom_point(pch=21, size=5, color="pink", fill="yellow")+
  #next line
  geom_line(aes(x=dist, y=Expect1), size=2, linetype="dashed", color="grey")+
  #next line
  geom_line(aes(x=dist, y=Expect2), size=2, linetype="dotted", color="orange")+
  theme_bw()+
  ylim(0, 20)
    

jennings.plot