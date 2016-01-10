expdata <- read.table(file = "household_power_consumption.txt", header = T, sep = ";",na.strings = c("NA","?"), stringsAsFactors = F)
subsetdata <- expdata[expdata$Date %in% c("1/2/2007", "2/2/2007"),]
dt <- paste(subsetdata$Date, subsetdata$Time)
datetime <- strptime(dt, "%d/%m/%Y %H:%M:%S")

png("plot2.png", width=480, height=480)
plot(datetime, subsetdata$Global_active_power, type="l",xlab = "", ylab="Global Active Power (kilowatts)")
dev.off()

