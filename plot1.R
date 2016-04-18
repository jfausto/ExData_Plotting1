## Coursera - JHU - Exploratory Graphs 
## Week 1. Assignment
## Date: 4/17/2016

## IMPORTANT NOTE #####
## DataSetLoad.R must be executed before to get the pwcFeb07 data frame
source('DataSetLoad.R')

## Draw the first Plot

hist(pwcFeb07$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")

## Saving to file
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()
