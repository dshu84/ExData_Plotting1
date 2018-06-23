source("loadData.R")
png(file = "Plot3.png", width = 480, height = 480, units = "px")

with(power_data, 
     plot(DateTime, Sub_metering_1, 
          type = "l", 
          xlab = "", 
          ylab = "Energy sub metering"))

with(power_data, lines(DateTime, Sub_metering_2, col = "red"))
with(power_data, lines(DateTime, Sub_metering_3, col = "blue"))
legend("topright", 
       col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lwd = 1)

dev.off()
rm(power_data)