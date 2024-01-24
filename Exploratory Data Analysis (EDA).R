
###Exploratory Data Analysis###
# Data Manipulation
# Data Visualisation
# Outlier Analysis
# Missing value treatments

#load the data
diamonds = read.csv(file.choose(), header = T)

#Summarizing the data

col(diamonds)
summary(diamonds)

head(diamonds) #check first six rows of data
tail(diamonds) #check last six rows of data

#Data Visualisation
#frequency of data distribution for categorical cut variable

install.packages('ggplot2')
install.packages('tidyverse')
library(ggplot2)
library(tidyverse)

ggplot(diamonds, aes(x=cut, fill=cut))+
  geom_bar()

#with this we can get count function of cut
diamonds %>%
  count(cut)

#histogram for a numeric variable
summary(diamonds$carat)

ggplot(diamonds, aes(x= carat, binwidth = 0.5))+
  geom_histogram()

#every datapoint has a 0.5 as a distribution each of this distribution just defines the characteristics
#of the bin values that we've is basically define with this specific values so the number of observation
#n the frequency the number of instances in this specific range

diamonds %>%
  count(cut_width(carat,0.5))

ggplot(diamonds, aes(x= carat, binwidth = 0.1))+
  geom_histogram()
  
diamonds %>%
  count(cut_width(carat,0.1))

#distribution with freqpoly graph
ggplot(diamonds, aes(carat, col = cut)) + geom_freqpoly(binwidth = 0.1)
  
#carat keeps increasing and it keeps decreasing for a overall period of time purity of diamonds 
#increasing the buying behaviour is changing accordingly if the purity is low the carat value is low
#then its basically having a higher purchases

ggplot(diamonds, aes(carat)) + geom_histogram(binwidth = 0.01)

###Outlier Analysis - univariate 
#Outliers are numbers which are abnormal in your distribution

boxplot(diamonds$x)

###Outlier Analysis - bivariate 
#Covariance
ggplot(diamonds, aes(x = carat, y = price)) +
  geom_point()
------------------------------------------------------------------------------------------------------
