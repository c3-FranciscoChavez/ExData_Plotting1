source('load_data.R')

table = load_file('../household_power_consumption.txt')

png(file='plot4.png', width = 480, height = 480)
par(mfcol=c(2,2))

plot(table$date_time, table$Global_active_power,  type='l', col = 'black', ylab = 'Global Active Power', xlab='')

plot(table$date_time, table$Sub_metering_1, type='l', col = 'blue', ylab = 'Energy sub metering', xlab='')
lines(table$date_time, table$Sub_metering_2, col='green' )
lines(table$date_time, table$Sub_metering_3, col='red' )
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col = c("blue","green","red"), lty = 1)

plot(table$date_time, table$Voltage, type='l', col = 'black', ylab = 'Voltage', xlab='')

plot(table$date_time, table$Global_reactive_power, type='l', col = 'black', ylab = 'Global Reactive Power', xlab='')

dev.off()
