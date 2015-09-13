# read in the whole dataset
dataall=read.table("household_power_consumption.txt",sep=";",header=TRUE)
# subset of data from the two days
dd2=dataall[dataall$Date == '2/2/2007'|dataall$Date=='1/2/2007',]

# convert the date/time to R format
xx=paste(datain$Date, datain$Time)
xdate=strptime(xx,"%d/%m/%Y %H:%M:%S")

png(file='Plot4.png',width=480, height=480)
par(mfrow=c(2,2))
plot(xdate, dd2$Global_active_power, xlab='',ylab='Global Active Power',type='n')
lines(xdate,dd2$Global_active_power)
plot(xdate, dd2$Voltage, xlab='datetime',ylab='Voltage',type='n')
lines(xdate,dd2$Voltage)
plot(xdate,dd2$Sub_metering_1,xlab='',ylab='Energy sub metering',type='n')
lines(xdate,dd2$Sub_metering_1)
lines(xdate,dd2$Sub_metering_2,col='red')
lines(xdate,dd2$Sub_metering_3,col='blue')
legend("topright",legend = c("Sub_metering_1",'Sub_metering_2','Sub_metering_3'), lty=1, col=c('black','red','blue'))
plot(xdate, dd2$Global_reactive_power, xlab='datetime',ylab='Global_reactive_power',type='n')
lines(xdate,dd2$Global_reactive_power)
dev.off()