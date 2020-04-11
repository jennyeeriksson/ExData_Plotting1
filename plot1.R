
# Load data using separate method
source("LoadData.R")
data<-LoadData()

par(mfrow = c(1, 1))

#Create plot1 (Histogram)
png(file="plot1.png", width=480, height=480)
hist(data$Global_active_power, col="red", main = "Global Active Power", xlab="Global active Power (kilowatts)", xlim=range(0,6), ylim=range(0,1200))
dev.off()






