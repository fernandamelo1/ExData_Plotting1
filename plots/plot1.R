Data <- read.table("household_power_consumption.txt", header=T, sep=";", na.strings="?")
FinalData <- Data[Data$Date %in% c("1/2/2007","2/2/2007"),]
SetTime <-strptime(paste(FinalData$Date, FinalData$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
FinalData <- cbind(SetTime, FinalData)

## Plot 1:

hist(FinalData$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
