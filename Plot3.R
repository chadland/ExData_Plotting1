#Source the code that loads the data
source("https://raw.githubusercontent.com/chadland/ExData_Plotting1/master/LoadData.R")

#Check if figures folder exist
mainDir <- getwd()
subDir <- "figures"

if (file.exists(subDir)){
} else {
  dir.create(file.path(mainDir, subDir))
}

#Print pngs
png(filename = "./figures/plot3.png", 
    width = 480, height = 480,
    units = "px", bg = "transparent")
plot(DateTime, Sub_metering_1, 
     type = "l",
     col = "black",
     xlab = "", ylab = "Energy sub metering")
lines(DateTime, Sub_metering_2, col = "red")
lines(DateTime, Sub_metering_3, col = "blue")
legend("topright", 
       col = c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lwd = 1)
dev.off()