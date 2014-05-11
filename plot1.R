# Global_active_power
x11(width=480, height=480);
hist(as.numeric(filtered$Global_active_power)/500, col="red", main="Global Active Power", xlab="Global Active Power(killowatts)");


dev.copy(png, file="./figure/plot1.png");
dev.off();
