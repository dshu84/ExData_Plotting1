source("loadData.R")
png(file = "Plot4.png", width = 480, height = 480, units = "px")

par(mfrow = c(2,2))

## Top Left
with(power_data, 
     plot(DateTime, Global_active_power, 
          type = "l", 
          xlab = "", 
          ylab = "Global Active Power"))

## Top Right
with(power_data, 
     plot(DateTime, Voltage, 
          type = "l", 
          xlab = "datetime"))

## Bottom Left
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
       lwd = 1, bty = "n")

## Bottom Right
with(power_data, 
     plot(DateTime, Global_reactive_power, 
          type = "l", 
          xlab = "datetime"))
dev.off()
rm(power_data)