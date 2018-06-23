source("loadData.R")
png(file = "Plot2.png", width = 480, height = 480, units = "px")
with(power_data, 
     plot(DateTime, Global_active_power, 
          type = "l", 
          xlab = "", 
          ylab = "Global Active Power (kilowatts)"))
dev.off()
rm(power_data)