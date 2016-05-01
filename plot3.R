# set working directory
setwd("C:/Users/stuartspern/Documents/Downloads/Courses/Data Science/R_working_directory/Course4_Week1")

# load the data loader file
source("Data_loader.R")

plot3 <- paste(getwd(), "/plot3.png", sep = "")
if(!file.exists(plot3)){
	png("plot3.png", width = 480, height = 480)
	#Creates plot of date/time v Sub metering 1 data
plot(strptime(two_day_data$Date_Time, "%d/%m/%Y %H:%M:%S"), two_day_data$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")

#Adds line graph for date/time v Sub metering 2 data in red
lines(strptime(two_day_data$Date_Time, "%d/%m/%Y %H:%M:%S"), two_day_data$Sub_metering_2, type = "l", col = "red" )

#Adds line graph for date/time v Sub metering 3 data in blue
lines(strptime(two_day_data$Date_Time, "%d/%m/%Y %H:%M:%S"), two_day_data$Sub_metering_3, type = "l", col = "blue" )

#Adds legend to graph
legend("topright", lty= 1, col = c("Black", "red", "blue"), legend = c( "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
	dev.off()
} else {
	#Creates plot of date/time v Sub metering 1 data
plot(strptime(two_day_data$Date_Time, "%d/%m/%Y %H:%M:%S"), two_day_data$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")

#Adds line graph for date/time v Sub metering 2 data in red
lines(strptime(two_day_data$Date_Time, "%d/%m/%Y %H:%M:%S"), two_day_data$Sub_metering_2, type = "l", col = "red" )

#Adds line graph for date/time v Sub metering 3 data in blue
lines(strptime(two_day_data$Date_Time, "%d/%m/%Y %H:%M:%S"), two_day_data$Sub_metering_3, type = "l", col = "blue" )

#Adds legend to graph
legend("topright", lty= 1, col = c("Black", "red", "blue"), legend = c( "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
}