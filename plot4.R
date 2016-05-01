# set working directory
setwd("C:/Users/stuartspern/Documents/Downloads/Courses/Data Science/R_working_directory/Course4_Week1")

# load the data loader file
source("Data_loader.R")


plot4 <- paste(getwd(), "/plot4.png", sep = "")
if(!file.exists(plot4)){
	png("plot4.png", width = 480, height = 480)	
	#Sets graphing parameters so that 4 graphs are drawn by column
par(mfcol = c(2,2))

# Creates graph of date/time vs global active power data
plot(strptime(two_day_data$Date_Time, "%d/%m/%Y %H:%M:%S"), two_day_data$Global_active_power, type = "l", 
     xlab = "", ylab = "Global Active Power(kilowatts)")

#Creates 2nd graph in column 1 
#Creates plot of date/time v Sub metering 1 data
plot(strptime(two_day_data$Date_Time, "%d/%m/%Y %H:%M:%S"), two_day_data$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")

#Adds line graph for date/time v Sub metering 2 data in red
lines(strptime(two_day_data$Date_Time, "%d/%m/%Y %H:%M:%S"), two_day_data$Sub_metering_2, type = "l", col = "red" )

#Adds line graph for date/time v Sub metering 3 data in blue
lines(strptime(two_day_data$Date_Time, "%d/%m/%Y %H:%M:%S"), two_day_data$Sub_metering_3, type = "l", col = "blue" )

#Adds legend to graph
legend("topright", lty= 1, col = c("Black", "red", "blue"), legend = c( "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

#Creates first graph in column 2
#This graphs date/time v Voltage
plot(strptime(two_day_data$Date_Time, "%d/%m/%Y %H:%M:%S"), two_day_data$Voltage, type = "l", 
     xlab = "datetime", ylab = "Voltage")

#Creates second graph in column 2
#This plots datetime v global reactive power
plot(strptime(two_day_data$Date_Time, "%d/%m/%Y %H:%M:%S"), two_day_data$Global_reactive_power, type = "l", 
     xlab = "datetime", ylab = "Global_reactive_power")
	dev.off()
} else {
	#Sets graphing parameters so that 4 graphs are drawn by column
par(mfcol = c(2,2))

# Creates graph of date/time vs global active power data
plot(strptime(two_day_data$Date_Time, "%d/%m/%Y %H:%M:%S"), two_day_data$Global_active_power, type = "l", 
     xlab = "", ylab = "Global Active Power(kilowatts)")

#Creates 2nd graph in column 1 
#Creates plot of date/time v Sub metering 1 data
plot(strptime(two_day_data$Date_Time, "%d/%m/%Y %H:%M:%S"), two_day_data$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")

#Adds line graph for date/time v Sub metering 2 data in red
lines(strptime(two_day_data$Date_Time, "%d/%m/%Y %H:%M:%S"), two_day_data$Sub_metering_2, type = "l", col = "red" )

#Adds line graph for date/time v Sub metering 3 data in blue
lines(strptime(two_day_data$Date_Time, "%d/%m/%Y %H:%M:%S"), two_day_data$Sub_metering_3, type = "l", col = "blue" )

#Adds legend to graph
legend("topright", lty= 1, col = c("Black", "red", "blue"), legend = c( "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

#Creates first graph in column 2
#This graphs date/time v Voltage
plot(strptime(two_day_data$Date_Time, "%d/%m/%Y %H:%M:%S"), two_day_data$Voltage, type = "l", 
     xlab = "datetime", ylab = "Voltage")

#Creates second graph in column 2
#This plots datetime v global reactive power
plot(strptime(two_day_data$Date_Time, "%d/%m/%Y %H:%M:%S"), two_day_data$Global_reactive_power, type = "l", 
     xlab = "datetime", ylab = "Global_reactive_power")
}