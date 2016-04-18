## Coursera - JHU - Exploratory Graphs 
## Week 1. Assignment
## Date: 4/17/2016

## IMPORTANT NOTE #####
## DataSetLoad.R must be executed before to get the pwcFeb07 data frame
source('DataSetLoad.R')

## Draw the 2nd Plot
plot(pwcFeb07$Global_active_power~pwcFeb07$DateTime, type="l",
     ylab="Global Active Power (kilowatts)", xlab="")
dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()
