# read in the whole dataset
dataall=read.table("household_power_consumption.txt",sep=";",header=TRUE)
# subset of data from the two days
dd2=dataall[dataall$Date == '2/2/2007'|dataall$Date=='1/2/2007',]

# plot1, histogram of the Global_active_power
png(file='Plot1.png',width=480, height=480)
hist(datain$Global_active_power,xlab="Global Active Power (kilowatts)", main= "Global Active Power", col='red')
dev.off()