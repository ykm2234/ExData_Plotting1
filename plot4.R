setwd("/Users/yogeshmore/Dropbox/coursera/exploratory/")
mydata<-read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors = FALSE)
subdata<-subset(mydata, mydata$Date=="1/2/2007"| mydata$Date=="2/2/2007")
png("plot4.png", width=480, height = 480)
par(mfrow=c(2,2))

plot(subdata$Global_active_power,  xaxt="n", xlab="", ylab="Global Active Power (kilowatts)", type="n")
axis(side=1, at=c(1, 1441, 2880), labels=c("Thu", "Fri", "Sat"))
with(subdata, lines(Global_active_power))

plot(subdata$Voltage,  xaxt="n", xlab="datetime", ylab="Voltage", type="n")
axis(side=1, at=c(1, 1441, 2880), labels=c("Thu", "Fri", "Sat"))
with(subdata, lines(Voltage))

plot(subdata$Sub_metering_1,  xaxt="n", xlab="", ylab="Global Active Power (kilowatts)", type="n")
axis(side=1, at=c(1, 1441, 2880), labels=c("Thu", "Fri", "Sat"))
with(subdata, lines(Sub_metering_1))
with(subdata, lines(Sub_metering_2, col = "red"))
with(subdata, lines(Sub_metering_3, col = "blue"))
legend("topright",  lwd=1, col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))


plot(subdata$Global_reactive_power,  xaxt="n", xlab="datetime", ylab="Global_reactive_power", type="n")
axis(side=1, at=c(1, 1441, 2880), labels=c("Thu", "Fri", "Sat"))
with(subdata, lines(Global_reactive_power))

dev.off()
