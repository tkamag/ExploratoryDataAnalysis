#Create data directory
	if(!file.exists("./data")){dir.create("./data")}
#Define dataFile
	dataFile <- "./data/household_power_consumption.txt"
	data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
#Subset data File
	subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
#Convert Global_active_power 
	globalActivePower <- as.numeric(subSetData$Global_active_power)
	png("./data/plot1.png", width=480, height=480)
	hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
	dev.off()