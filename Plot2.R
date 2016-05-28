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
png(filename = "./figures/plot2.png", 
    width = 480, height = 480,
    units = "px", bg = "transparent")
plot(DateTime, Global_active_power, 
     type = "l",
     xlab = "",
     ylab = "Global Active Power (kilowatts)")
dev.off()