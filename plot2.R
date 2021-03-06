png(file="plot2.png",width=480,height=480)
electric<-read.table("household_power_consumption.txt",header=TRUE,sep=";",na.strings="?",stringsAsFactors=FALSE)
electric<-electric[electric$Date=="1/2/2007" | electric$Date=="2/2/2007", ]
x<-strptime(paste(electric$Date,electric$Time,sep=" "), "%d/%m/%Y %H:%M:%S" )
par(mar=c(5,5,4,2))
plot(x,electric$Global_active_power,xlab=" ",ylab="Global Active Power (killowatts)",type ="l")
##dev.copy(png,file="plot2.png",width=480,height=480) better graphics using png upfront
dev.off()  