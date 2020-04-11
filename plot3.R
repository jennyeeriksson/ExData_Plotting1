# Load data using separate method
source("LoadData.R")
data<-LoadData()

par(mfrow = c(1, 1))


#Create plot3 (Lineplot)
png(file="plot3.png", width=480, height=480)

plot(data$datetime, data$Sub_metering_1, type="l", main = "", ylab="Energy Sub Metering", xlab="")
lines(data$datetime, data$Sub_metering_2, col="red")
lines(data$datetime, data$Sub_metering_3, col="blue")
legend("topright",c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"), col=c("black","red","blue"), lty=c(1,1,1))
dev.off()


