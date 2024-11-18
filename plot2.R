source('load_data.R')

table = load_file('../household_power_consumption.txt')

png(file='plot2.png', width = 480, height = 480)

plot(table$date_time, table$Global_active_power, main='Global Active Power', type='l', col = 'black', ylab = 'Global Active Power (kilowatts)', xlab='')

date1 = strptime('2007/02/01 00:00:00', format = '%Y/%m/%d %H:%M:%S')
date2 = strptime('2007/02/02 00:00:00', format = '%Y/%m/%d %H:%M:%S')
date3 = strptime('2007/02/03 00:00:00', format = '%Y/%m/%d %H:%M:%S')

#axis(1,at=c(date1,date2,date3),labels=c('Thu','Fri','Sat')) 
dev.off()
