source('load_data.R')

table = load_file('../household_power_consumption.txt')
png(file='plot1.png', width = 480, height = 480)
hist(table$Global_active_power, main='Global Active Power', col = 'red', xlab = 'Global Active Power (kilowatts)')

dev.off()
