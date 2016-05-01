#This is common data loader file that creates the two day consumption data.table that is used for the 4 PNG graphs

#Load in necessary libraries
library(dplyr)
library(data.table)


# URL path to zipped dataset
# download zipped dataset if it doesn't already exist in working directory
zipurl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
zipfilepath <- "./household_power_consumption.zip"
if(!file.exists(zipfilepath)){
	download.file(zipurl, zipfilepath, method="auto")
}
# check for existence of destination folder "data" , create if necessary
if (!file.exists("data")) {
    dir.create("data")
  }
#Unzip the zipped archive
unzip(zipfilepath, list = FALSE, overwrite = TRUE, exdir = "./data" )

datafilepath <- paste0(file.path(getwd(), "data"),"/household_power_consumption.txt")


#Reads in data from file then subsets data for specified dates

data <- fread(datafilepath, na.strings="?",stringsAsFactors = FALSE, colClasses = c("character", "character", rep("numeric",7)),) 

two_day_data <- filter(data, grep("^[1,2]/2/2007", Date))

#Creates new column that concatenates date and time data 
two_day_data$Date_Time <-paste(two_day_data$Date, two_day_data$Time)