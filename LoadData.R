LoadData<- function()
{
# Download data from source
if(!file.exists("household_power_consumption.txt"))
{
    download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhou
sehold_power_consumption.zip","household_power_consumption.zip")
    unzip("household_power_consumption.zip")
}

# To only read rows that are needed, find which indexes corresponds to dates 2007-02-01 and 2007-02-02.
dates <- read.table("household_power_consumption.txt", header=T,colClasses = c("character","character"), rep("NULL", 7), sep=";" )
idx <- grep("^(1|2)/2/2007",dates$Date)
startIdx <- idx[1]
nDates <- length(idx)

#Read selected rows
features <- read.table("household_power_consumption.txt", sep=";",nrows=1, colClasses = "character")
data <- read.table("household_power_consumption.txt", header=T, sep=";", skip=startIdx-1, nrows=nDates, na.strings = "?" )
names(data) <- features

# Add datetime feature
date<-as.Date(data$Date,format="%d/%m/%Y")
datetime<-as.POSIXct(paste(date,data$Time))
data<-cbind(data,datetime)

data
}