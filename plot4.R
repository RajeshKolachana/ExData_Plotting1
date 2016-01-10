expdata <- read.table(file = "household_power_consumption.txt", header = T, sep = ";",na.strings = c("NA","?"), stringsAsFactors = F)
subsetdata <- expdata[expdata$Date %in% c("1/2/2007", "2/2/2007"),]
dt <- paste(subsetdata$Date, subsetdata$Time)
datetime <- strptime(dt, "%d/%m/%Y %H:%M:%S")

png("plot4.png", width=480, height=480)
par(mfrow = c(2, 2)) 

plot(datetime, subsetdata$Global_active_power, type="l",xlab = "", ylab="Global Active Power")

plot(datetime, subsetdata$Voltage, type="l", xlab="datetime", ylab="Voltage")

plot(datetime, subsetdata$Sub_metering_1, type="l", xlab = "", ylab="Energy sub metering")
lines(datetime, subsetdata$Sub_metering_2, type="l", col="red")
lines(datetime, subsetdata$Sub_metering_3, type="l", col="blue")
legend("topright",c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"), bty = "n")

plot(datetime, subsetdata$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")

dev.off()

