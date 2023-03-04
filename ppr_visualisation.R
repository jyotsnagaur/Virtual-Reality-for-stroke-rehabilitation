mydata <- read.csv("3dfma.csv")
mydata
class(mydata)

 


install.packages("threejs") 
install.packages("rgl")
library(rgl) 
library(threejs)

x <- mydata$Name 
y <- mydata$Age
z <- mydata$FMA_difference



scatterplot3js(bg="black", x, y, z, num.ticks=c(15,25,16), color= heat.colors(length(z)), axisLabels=c("Name", "FMA_difference", "Age") )

#plot3d(x,y,z, type="s",  
      # size = 2, col=as.numeric(mydata$FMA_difference),  
      # xlab="Name", ylab="Age", zlab="FMA_difference") 

play3d(spin3d( axis = c(0, 1, 0), rpm = 5), duration = 10 ) 




#install.packages("magick") 
#library(magick) 

#movie3d(movie="3dAnimatedScatterplot",  
        #spin3d( axis = c(1, 77, 3), rpm = 7), 
        #duration = 5, 
        #dir = getwd(), 
        #type = "gif",  
        #clean = TRUE) 
















