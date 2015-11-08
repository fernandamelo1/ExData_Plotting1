
Data <- read.table("household_power_consumption.txt", header=T, sep=";", na.strings="?")
FinalData <- Data[Data$Date %in% c("1/2/2007","2/2/2007"),]
SetTime <-strptime(paste(FinalData$Date, FinalData$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
FinalData <- cbind(SetTime, FinalData)



## Plot 2

plot(FinalData$SetTime, FinalData$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
