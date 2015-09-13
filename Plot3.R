# read in the whole dataset
dataall=read.table("household_power_consumption.txt",sep=";",header=TRUE)
# subset of data from the two days
dd2=dataall[dataall$Date == '2/2/2007'|dataall$Date=='1/2/2007',]

# convert the date/time to R format
xx=paste(datain$Date, datain$Time)
xdate=strptime(xx,"%d/%m/%Y %H:%M:%S")

png(file='Plot3.png',width=480, height=480)
plot(xdate,dd2$Sub_metering_1,xlab='',ylab='Energy sub metering',type='n')
lines(xdate,dd2$Sub_metering_1)
lines(xdate,dd2$Sub_metering_2,col='red')
lines(xdate,dd2$Sub_metering_3,col='blue')
legend("topright",legend = c("Sub_metering_1",'Sub_metering_2','Sub_metering_3'),col=c('black','red','blue'), lty=1)
dev.off()