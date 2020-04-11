# Load data using separate method

source("LoadData.R")
data<-LoadData()

par(mfrow = c(1, 1))

#Create plot2 (Lineplot)
png(file="plot2.png", width=480, height=480)
plot(data$datetime, data$Global_active_power, type="l", main = "", ylab="Global active Power (kilowatts)", xlab="") 
dev.off()


