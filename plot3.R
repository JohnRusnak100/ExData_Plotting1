png(file="plot3.png",width=480,height=480)
electric<-read.table("household_power_consumption.txt",header=TRUE,sep=";",na.strings="?",stringsAsFactors=FALSE)
electric<-electric[electric$Date=="1/2/2007" | electric$Date=="2/2/2007", ]
x<-strptime(paste(electric$Date,electric$Time,sep=" "), "%d/%m/%Y %H:%M:%S" )
par(mar=c(5,5,4,1))
## plot x vs sub metering 1 as usual and then overlay lines for sub metering 2 & 3
plot(x,electric$Sub_metering_1,xlab=" ",ylab="Energy sub metering",type ="l")
lines(x,electric$Sub_metering_2,col="red")
lines(x,electric$Sub_metering_3,col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=1)
##dev.copy(png,file="plot3.png",width=480,height=480) better graphics using png upfront
dev.off()  