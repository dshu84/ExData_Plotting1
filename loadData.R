## Coursera: Exploratory Data Analysis: Course Project 1
## Author(s): Durgesh S
## Date: 22/06/2018
## Purpose: read data from "household_power_consumption.txt" file present in working directory

## read header
header <- read.table("household_power_consumption.txt",
                     sep = ";",
                     header = TRUE,
                     nrows = 1)

## read file without header
power_data <- read.table("household_power_consumption.txt",
                         sep = ";",
                         skip = 66637,
                         nrows = 2880)

## add column names to power data
colnames(power_data) <- colnames(header)

## delete header object to free some memory
rm(header)

## Converge date and time to one column
power_data$DateTime <- strptime(paste(power_data$Date, power_data$Time), "%d/%m/%Y %H:%M:%S")