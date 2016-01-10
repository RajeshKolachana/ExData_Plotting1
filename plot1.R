expdata <- read.table(file = "household_power_consumption.txt", header = T, sep = ";",na.strings = c("NA","?"), stringsAsFactors = F)
subsetdata <- expdata[expdata$Date %in% c("1/2/2007", "2/2/2007"),]
png(filename = "plot1.png",width = 480, height = 480)
hist(subsetdata$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()
