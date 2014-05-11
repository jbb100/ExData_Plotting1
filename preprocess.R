fileUrl <- "./data/household_power_consumption.txt";
dat <- read.table(fileUrl, sep=";", header=TRUE);
dat$Date <- strptime(dat$Date, format = "%d/%m/%Y");
filtered <- dat[dat$Date>=strptime("2007-02-01", format = "%Y-%m-%d") & dat$Date<=strptime("2007-02-02", format = "%Y-%m-%d"),];
tail(filtered);
names(filtered);

