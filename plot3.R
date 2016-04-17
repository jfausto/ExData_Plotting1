## Coursera - JHU - Exploratory Graphs 
## Week 1. Assignment
## Date: 4/17/2016

## IMPORTANT NOTE #####
## DataSetLoad.R must be executed before to get the pwcFeb07 data frame

## Draw the 3rd Plot


with(pwcFeb07, {
    plot(Sub_metering_1~DateTime, type="l",
         ylab="Energy sub metering", xlab="")
    lines(Sub_metering_2~DateTime,col='Red')
    lines(Sub_metering_3~DateTime,col='Blue')
})
legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),text.width = 45000,cex=0.70)

## Saving to file
dev.copy(png, file="plot3.png",height=480,width=480)
dev.off()