install.packages("ggplot2")
install.packages("tidyverse")
library(ggplot2)
library(tidyverse)

mydata <- read.csv("3dformft.csv")
mydata


g = ggplot(mydata, aes(x=Name, y=mft, fill=group)) + 
  geom_bar(stat="identity", width=0.7, position=position_dodge(width=0.8))+
  coord_flip()

plot(g)

mydata <- read.csv("3dforbbt.csv")
g = ggplot(mydata, aes(x=Name, y=BBT, fill=group)) + 
  geom_bar(stat="identity", width=0.7, position=position_dodge(width=0.8))+
  scale_fill_brewer(palette="Accent")+
  coord_flip()

plot(g)

mydata <- read.csv("3dforMBT.csv")
g = ggplot(mydata, aes(x=Name, y=MBI, fill=group)) + 
  geom_bar(stat="identity", width=0.7, position=position_dodge(width=0.8))+
  scale_fill_brewer(palette="Set1")+
  coord_flip()

plot(g)