##################################################
### PROG8430                                    ##
### Quick R Exercises                           ## 
##################################################
#                                               ##
##################################################
# Written by Peiyuan Zhou                       ##
# ID: 123456                                    ##
##################################################
### Basic Set Up                                ##
##################################################
# Clear plots
if(!is.null(dev.list())) dev.off()
# Clear console
cat("\014") 
# Clean workspace
rm(list=ls())
options(scipen=9)

##################################################
###      Histogram                              ##
##################################################
str(airquality) #Display the structure of the vector
Temperature <- airquality$Temp

#Return Value of hist()
 

#Use Histogram return values for labels using text()
 

#Histogram with different breaks
 

#Histogram with non-uniform width
 


##################################################
###        Boxplot                              ##
##################################################
str(mtcars)
input <- mtcars[c('mpg','cyl')]

 

##################################################
###        Scatter                              ##
##################################################
str(mtcars)
attach(mtcars)
 

# Basic Scatterplot Matrix
 



