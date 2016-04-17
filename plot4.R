## Coursera - JHU - Exploratory Graphs 
## Week 1. Assignment
## Date: 4/17/2016

## IMPORTANT NOTE #####
## DataSetLoad.R must be executed before to get the pwcFeb07 data frame

## Draw the 4th Plot



par(mfrow=c(2,2),oma=c(0,1,0,0),mar=c(4,4,2,2))
with(pwcFeb07, {
    plot(Global_active_power~DateTime, type="l", 
         ylab="Global Active Power (kW)", xlab="")
    plot(Voltage~DateTime, type="l", 
         ylab="Voltage (v)", xlab="datetime")
    plot(Sub_metering_1~DateTime, type="l", 
         ylab="Energy sub metering", xlab="")
    lines(Sub_metering_2~DateTime,col='Red')
    lines(Sub_metering_3~DateTime,col='Blue')
    legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, bty="n",
           legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),text.width = 60000,cex=0.5)
    plot(Global_reactive_power~DateTime, type="l", 
         ylab="Global Rective Power (kW)",xlab="datetime")
})

## Saving to file
dev.copy(png, file="plot4.png", height=480, width=480)
dev.off()
