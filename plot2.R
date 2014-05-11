
x11(width=480, height=480);

plot(strptime(paste(filtered$Date, filtered$Time), format="%Y-%m-%d %H:%M:%S"), as.numeric(filtered$Global_active_power)/500, type="l", ylab="Global Active Power (kilowatts)");

dev.copy(png, file="./figure/plot2.png");
dev.off();


