## Coursera - JHU - Exploratory Graphs 
## Week 1. Assignment
## Date: 4/17/2016

## Load and Prepare Data Set for Plots


## Get the file
filename <- "powerconsumption.zip"

## Download and unzip the dataset:
if (!file.exists(filename)){
    fileURL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
    download.file(fileURL, filename, method="curl")
} 
if (!file.exists("household_power_consumption.txt")){
    unzip(filename)
}


## Subset the file to the specific dates: 2007-02-01 and 2007-02-02.
pwc <- read.csv("household_power_consumption.txt",  sep=";", header=TRUE)

#first we change the Date type
pwc$Date <- as.Date(pwc$Date,"%d/%m/%y")
pwcFeb07 <- subset(pwc, Date=="2007-02-01" | Date=="2007-02-02")
##Global object is removed
##rm(pwc)

## Setting the right types
##Create a DateTime column
datetime <- paste(as.Date(pwcFeb07$Date),pwcFeb07$Time)
pwcFeb07$DateTime <- as.POSIXct(datetime)



##Global_active_power to numeric
pwcFeb07$Global_active_power <- as.numeric(levels(pwcFeb07$Global_active_power))[pwcFeb07$Global_active_power]
##Global_reactive_power to numeric
pwcFeb07$Global_reactive_power <- as.numeric(levels(pwcFeb07$Global_reactive_power))[pwcFeb07$Global_reactive_power]
##Voltage
pwcFeb07$Voltage <- as.numeric(levels(pwcFeb07$Voltage))[pwcFeb07$Voltage]
##Global Intensity
pwcFeb07$Global_intensity <- as.numeric(levels(pwcFeb07$Global_intensity))[pwcFeb07$Global_intensity]
##Submetering_1
pwcFeb07$Sub_metering_1 <- as.numeric(levels(pwcFeb07$Sub_metering_1))[pwcFeb07$Sub_metering_1]
##Submetering_2
pwcFeb07$Sub_metering_2 <- as.numeric(levels(pwcFeb07$Sub_metering_2))[pwcFeb07$Sub_metering_2]
##Submetering_3
pwcFeb07$Sub_metering_3 <- as.numeric(levels(pwcFeb07$Sub_metering_3))[pwcFeb07$Sub_metering_3]




