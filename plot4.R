x11(width=480, height=480);


time <- strptime(paste(filtered$Date, filtered$Time), format="%Y-%m-%d %H:%M:%S");


par(mfrow=c(2,2), mar=c(4,4,2,1), oma=c(0,0,2,0));

with(filtered, {
  plot(time, Global_active_power, type="l", xlab="", ylab="Global Active Power")
  
  plot(time, Voltage, type="l", xlab="datetime", ylab="Voltage")
  
  plot(time, as.numeric(Sub_metering_1), type="l", col="black", xlab="", ylab="Energy sub metering")
  points(time, as.numeric(Sub_metering_2), type="l", col="red")
  points(time, as.numeric(Sub_metering_3), type="l", col="blue")
  legend("topright", pch="-", col=c("black", "blue", "red"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  
  
  
  plot(time, Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")
  
  
  
});

dev.copy(png, file="./figure/plot4.png");
dev.off();

