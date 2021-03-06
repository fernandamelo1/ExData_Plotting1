Data <- read.table("household_power_consumption.txt", header=T, sep=";", na.strings="?")
FinalData <- Data[Data$Date %in% c("1/2/2007","2/2/2007"),]
SetTime <-strptime(paste(FinalData$Date, FinalData$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
FinalData <- cbind(SetTime, FinalData)


## Plot 4:
labels <- c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
columnlines <- c("black","red","blue")
par(mfrow=c(2,2),mar = c(4,4,2,1),oma = c(0,0,1,0))
plot(FinalData$SetTime, FinalData$Global_active_power, type="l", xlab="", ylab="Global Active Power")
plot(FinalData$SetTime, FinalData$Voltage, type="l", xlab="datetime", ylab="Voltage")
plot(FinalData$SetTime, FinalData$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(FinalData$SetTime, FinalData$Sub_metering_2, type="l", col="red")
lines(FinalData$SetTime, FinalData$Sub_metering_3, type="l", col="blue")
legend("topright", bty="n", legend=labels, lty=1, col=columnlines,cex=0.5)
plot(FinalData$SetTime, FinalData$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")