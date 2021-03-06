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
png(filename = "./figures/plot1.png", 
    width = 480, height = 480, 
    units = "px", bg = "transparent")
hist(Global_active_power, 
     col = "red", 
     main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)",
     breaks = 12, ylim = c(0, 1200))
dev.off()

