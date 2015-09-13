# read in the whole dataset
dataall=read.table("household_power_consumption.txt",sep=";",header=TRUE)
# subset of data from the two days
dd2=dataall[dataall$Date == '2/2/2007'|dataall$Date=='1/2/2007',]

# convert the date/time to R format
xx=paste(datain$Date, datain$Time)
xdate=strptime(xx,"%d/%m/%Y %H:%M:%S")

png(file='Plot2.png',width=480, height=480)
plot(xdate, dd2$Global_active_power, xlab='',ylab='Global Active Power (kilowatts)',type='n')
lines(xdate, dd2$Global_active_power)
dev.off()