load_file <- function(filename) {
  input_file = read.csv(filename, sep=';')
  input_file$date_time = strptime(paste(input_file$Date, input_file$Time), format = '%d/%m/%Y %H:%M:%S')
  
  date_converted <- as.Date(input_file$Date, format = "%d/%m/%Y")
  time_converted <- strptime(input_file$Time, format = "%H:%M:%S")
  input_file$time_axis <- as.POSIXct(paste(date_converted, input_file$Time))
  
  input_file = subset(input_file[(input_file$date_time >= '2007-02-01' & input_file$date_time < '2007-02-03' & !is.na(input_file$date_time)) ,], select= -c(Date,Time))
  input_file$Global_active_power = as.numeric(input_file$Global_active_power)
  input_file$Global_reactive_power = as.numeric(input_file$Global_reactive_power)
  input_file$Voltage = as.numeric(input_file$Voltage)
  input_file$Global_intensity = as.numeric(input_file$Global_intensity)
  input_file$Sub_metering_1 = as.numeric(input_file$Sub_metering_1)
  input_file$Sub_metering_2 = as.numeric(input_file$Sub_metering_2)
  input_file
}

