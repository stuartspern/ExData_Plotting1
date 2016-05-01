# set working directory
setwd("C:/Users/stuartspern/Documents/Downloads/Courses/Data Science/R_working_directory/Course4_Week1")

# load the data loader file
source("Data_loader.R")

plot2 <- paste(getwd(), "/plot2.png", sep = "")
if(!file.exists(plot2)){
	png("plot2.png", width = 480, height = 480)
	plot(strptime(two_day_data$Date_Time, "%d/%m/%Y %H:%M:%S"), two_day_data$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power(kilowatts)")
	dev.off()
} else {
	plot(strptime(two_day_data$Date_Time, "%d/%m/%Y %H:%M:%S"), two_day_data$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power(kilowatts)")
}