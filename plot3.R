setwd("/Users/yogeshmore/Dropbox/coursera/exploratory/")
mydata<-read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors = FALSE)
subdata<-subset(mydata, mydata$Date=="1/2/2007"| mydata$Date=="2/2/2007")
png("plot3.png", width=480, height = 480)
plot(subdata$Sub_metering_1,  xaxt="n", xlab="", ylab="Global Active Power (kilowatts)", type="n")
axis(side=1, at=c(1, 1441, 2880), labels=c("Thu", "Fri", "Sat"))
with(subdata, lines(Sub_metering_1))
with(subdata, lines(Sub_metering_2, col = "red"))
with(subdata, lines(Sub_metering_3, col = "blue"))
legend("topright",  lwd=1, col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))


dev.off()
