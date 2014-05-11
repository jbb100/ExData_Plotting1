x11(width=480, height=480);




time <- strptime(paste(filtered$Date, filtered$Time), format="%Y-%m-%d %H:%M:%S");

with(filtered, plot(time, as.numeric(Sub_metering_1), type="l", col="black", xlab="", ylab="Energy sub metering"));
with(filtered, points(time, as.numeric(Sub_metering_2), type="l", col="red"));
with(filtered, points(time, as.numeric(Sub_metering_3), type="l", col="blue"));

legend("topright", pch="-", col=c("black", "blue", "red"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"));

dev.copy(png, file="./figure/plot3.png");
dev.off();


