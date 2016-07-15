setwd("/Users/yogeshmore/Dropbox/coursera/exploratory/")
mydata<-read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors = FALSE)
subdata<-subset(mydata, mydata$Date=="1/2/2007"| mydata$Date=="2/2/2007")
png("plot2.png", width=480, height = 480)
plot(subdata$Global_active_power,  xaxt="n", xlab="", ylab="Global Active Power (kilowatts)", type="n")
axis(side=1, at=c(1, 1441, 2880), labels=c("Thu", "Fri", "Sat"))
with(subdata, lines(Global_active_power))
dev.off()

