setwd("/Users/yogeshmore/Dropbox/coursera/exploratory/")
mydata<-read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors = FALSE)
subdata<-subset(mydata, mydata$Date=="1/2/2007"| mydata$Date=="2/2/2007")
png("plot1.png", width=480, height = 480)
with(subdata, hist(as.numeric(Global_active_power), col="red", xlab="Global Active Power (in kilowatts)", main="Global Active Power", ylim=c(0,1200)))
dev.off()
