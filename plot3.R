source('load_data.R')

table = load_file('../household_power_consumption.txt')

png(file='plot3.png', width = 480, height = 480)

plot(table$date_time, table$Sub_metering_1, type='l', col = 'blue', ylab = 'Energy sub metering', xlab='')
lines(table$date_time, table$Sub_metering_2, col='green' )
lines(table$date_time, table$Sub_metering_3, col='red' )

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col = c("blue","green","red"), lty = 1)
  
date1 = strptime('2007/02/01 00:00:00', format = '%Y/%m/%d %H:%M:%S')
date2 = strptime('2007/02/02 00:00:00', format = '%Y/%m/%d %H:%M:%S')
date3 = strptime('2007/02/03 00:00:00', format = '%Y/%m/%d %H:%M:%S')

#axis(1,at=c(date1,date2,date3),labels=c('Thu','Fri','Sat')) 

dev.off()
