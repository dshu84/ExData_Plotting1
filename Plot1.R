source("loadData.R")
png(file = "Plot1.png", width = 480, height = 480, units = "px")
hist(power_data$Global_active_power, 
     main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)", 
     col = "red")
dev.off()
rm(power_data)