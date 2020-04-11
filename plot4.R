# Load data using separate method
source("LoadData.R")
data<-LoadData()

#Create plot2 (Lineplot)
png(file="plot4.png", width=480, height=480)


par(mfrow = c(2, 2))
with(data,{
#Plot1
plot(data$datetime, data$Global_active_power, type="l", main = "", ylab="Global active Power (kilowatts)",xlab="")
    
#Plot2
plot(data$datetime, data$Voltage, type="l", main = "", ylab="Voltage", xlab="datetime")
    
#Plot 3
plot(data$datetime, data$Sub_metering_1, type="l", main = "", ylab="Energy Sub Metering", xlab="")
lines(data$datetime, data$Sub_metering_2, col="red")
lines(data$datetime, data$Sub_metering_3, col="blue")
legend("topright",c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"), col=c("black","red","blue"), lty=c(1,1,1))

#Plot4
plot(data$datetime, data$Global_reactive_power, type="l", main = "", ylab="Voltage", xlab="datetime")
})
dev.off()


