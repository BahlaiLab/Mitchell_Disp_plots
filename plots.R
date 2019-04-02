#read data in

jennings<-read.csv(file="jennings.csv", header=TRUE)

#had to use a dummy scale to make the simulations work in programita
#let's correct that now

jennings$dist<-jennings$Scale/2

library(ggplot2)

bivg12_jennings.plot<- ggplot(jennings, aes(x=dist, y=g12r))+
  #first line
  geom_line(size=1, color="black")+
  geom_point(pch=21, size=2, color="black", fill="black")+
  #next line
  geom_line(aes(x=dist, y=E12m), size=1, linetype="solid", color="grey")+
  #next line
  geom_line(aes(x=dist, y=E12p), size=1, linetype="solid", color="grey")+
  theme_bw()+
  coord_cartesian(ylim=c(0, 7.5)) +
  ylab(bquote(g[12](r))) + xlab("Distance (m)") +
  scale_x_continuous(breaks = pretty(jennings$dist, n = 10)) +
  scale_y_continuous(breaks = pretty(jennings$g12r, n = 10))

bivg12_jennings.plot




pearson <- read.csv("~/Desktop/Research/Fieldwork Spreadsheets/Fall 2018/Excel Files for Analysis/pearsonbivariate.csv")
pearson$dist<-pearson$Scale/10
bivg12_pearson.plot<- ggplot(pearson, aes(x=dist, y=g12r))+
  #first line
  geom_line(size=1, color="black")+
  geom_point(pch=21, size=2, color="black", fill="black")+
  #next line
  geom_line(aes(x=dist, y=E12m), size=1, linetype="solid", color="grey")+
  #next line
  geom_line(aes(x=dist, y=E12p), size=1, linetype="solid", color="grey")+
  theme_bw()+
  coord_cartesian(ylim=c(0, 2)) +
  ylab(bquote(g[12](r))) + xlab("Distance (m)") +
  scale_x_continuous(breaks = pretty(pearson$dist, n = 10)) 

bivg12_pearson.plot




fpearsonuni <- read.csv("~/Desktop/Research/Fieldwork Spreadsheets/Fall 2018/Excel Files for Analysis/fpearsonunivariate.csv")
fpearsonuni$dist<-fpearsonuni$Distance/10
unig11_pearson.plot<- ggplot(fpearsonuni, aes(x=dist, y=g11r))+
  #first line
  geom_line(size=1, color="black")+
  geom_point(pch=21, size=2, color="black", fill="black")+
  #next line
  geom_line(aes(x=dist, y=E11m), size=1, linetype="solid", color="grey")+
  #next line
  geom_line(aes(x=dist, y=E11p), size=1, linetype="solid", color="grey")+
  theme_bw()+
  coord_cartesian(ylim=c(0, 5)) +
  ylab(bquote(g(r))) + xlab("Distance (m)") +
  scale_x_continuous(breaks = pretty(fpearsonuni$dist, n = 10)) 

unig11_pearson.plot




fjenningsuni<-read.csv("~/Desktop/Research/Fieldwork Spreadsheets/Fall 2018/Excel Files for Analysis/fjenningsunivariate.csv")
      
#had to use a dummy scale to make the simulations work in programita
#let's correct that now

fjenningsuni$dist<-fjenningsuni$Distance/2
unig11_jennings.plot<- ggplot(fjenningsuni, aes(x=dist, y=g11r))+
  #first line
  geom_line(size=1, color="black")+
  geom_point(pch=21, size=2, color="black", fill="black")+
  #next line
  geom_line(aes(x=dist, y=E11m), size=1, linetype="solid", color="grey")+
  #next line
  geom_line(aes(x=dist, y=E11p), size=1, linetype="solid", color="grey")+
  theme_bw()+
  coord_cartesian(ylim=c(0, 50)) +
  ylab(bquote(g(r))) + xlab("Distance (m)") +
  scale_x_continuous(breaks = pretty(fjenningsuni$dist, n = 10))

unig11_jennings.plot




hjenningsuni<-read.csv("~/Desktop/Research/Fieldwork Spreadsheets/Fall 2018/Excel Files for Analysis/hjenningsunivariate.csv")

#had to use a dummy scale to make the simulations work in programita
#let's correct that now

hjenningsuni$dist<-hjenningsuni$Distance/2
hunig11_jennings.plot<- ggplot(hjenningsuni, aes(x=dist, y=g11r))+
  #first line
  geom_line(size=1, color="black")+
  geom_point(pch=21, size=2, color="black", fill="black")+
  #next line
  geom_line(aes(x=dist, y=E11m), size=1, linetype="solid", color="grey")+
  #next line
  geom_line(aes(x=dist, y=E11p), size=1, linetype="solid", color="grey")+
  theme_bw()+
  coord_cartesian(ylim=c(0, 10)) +
  ylab(bquote(g(r))) + xlab("Distance (m)") +
  scale_x_continuous(breaks = pretty(hjenningsuni$dist, n = 10))

hunig11_jennings.plot



hpearsonuni <- read.csv("~/Desktop/Research/Fieldwork Spreadsheets/Fall 2018/Excel Files for Analysis/hpearsonunivariate.csv")
hpearsonuni$dist<-hpearsonuni$Distance/10
hunig11_pearson.plot<- ggplot(hpearsonuni, aes(x=dist, y=g11r))+
  #first line
  geom_line(size=1, color="black")+
  geom_point(pch=21, size=2, color="black", fill="black")+
  #next line
  geom_line(aes(x=dist, y=E11m), size=1, linetype="solid", color="grey")+
  #next line
  geom_line(aes(x=dist, y=E11p), size=1, linetype="solid", color="grey")+
  theme_bw()+
  coord_cartesian(ylim=c(0, 5)) +
  ylab(bquote(g(r))) + xlab("Distance (m)") +
  scale_x_continuous(breaks = pretty(hpearsonuni$dist, n = 10)) 

hunig11_pearson.plot
#damn, daniel. this one doesn't appear to aggregate! :(