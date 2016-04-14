png(file="plot4.png",width=480,height=480)
electric<-read.table("household_power_consumption.txt",header=TRUE,sep=";",na.strings="?",stringsAsFactors=FALSE)
electric<-electric[electric$Date=="1/2/2007" | electric$Date=="2/2/2007", ]
x<-strptime(paste(electric$Date,electric$Time,sep=" "), "%d/%m/%Y %H:%M:%S" )
par(mfrow=c(2,2),mar=c(5,5,2,1))
plot(x,electric$Global_active_power,xlab=" ",ylab="Global Active Power",type ="l")
plot(x,electric$Voltage,xlab="datetime",ylab="Voltage",type ="l")
plot(x,electric$Sub_metering_1,xlab=" ",ylab="Energy sub metering",type ="l")
lines(x,electric$Sub_metering_2,col="red")
lines(x,electric$Sub_metering_3,col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=1,bty="n")
plot(x,electric$Global_reactive_power,xlab="datetime",ylab="Global_reactive_power",type ="l")
##dev.copy(png,file="plot4.png",width=480,height=480) better graphics using png upfront
dev.off() 