
# set working directory
setwd("C:/Users/stuartspern/Documents/Downloads/Courses/Data Science/R_working_directory/Course4_Week1")

# load the data loader file
source("Data_loader.R")

plot1 <- paste(getwd(), "/plot1.png", sep = "")
if(!file.exists(plot1)){
	png("plot1.png", width = 480, height = 480)
	hist(two_day_data$Global_active_power, col = "red", main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)")
	dev.off()
} else {
	hist(two_day_data$Global_active_power, col = "red", main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)")
}