## This file is for loading the large dataset.
#Clear workspace 
rm(list = ls())

# Download and unpack zipfile
get.data.project <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(get.data.project,destfile="./data/household_power_consumption.zip",method="auto")  
zipfile.data = "household_power_consumption.zip"

#Check if data folder exist
mainDir <- getwd()
subDir <- "data"

if (file.exists(subDir)){
} else {
  dir.create(file.path(mainDir, subDir))
}

#Check if zip file exist
if(!file.exists(zipfile.data)) {        
  unzip(zipfile="./data/household_power_consumption.zip",exdir="./data")
} 

#Set file
filename <- "./data/household_power_consumption.txt"
data <- read.table(filename,
                   header = TRUE,
                   sep = ";",
                   colClasses = c("character", "character", rep("numeric",7)),
                   na = "?")

#Calculate dimension
dim(data) # 2075259 9
attach(data)

## We only need data of 2 days.
subset <- Date == "1/2/2007" | Date == "2/2/2007"
newData <- data[subset, ]
attach(newData)
x <- paste(Date, Time)
newData$DateTime <- strptime(x, "%d/%m/%Y %H:%M:%S")
rownames(newData) <- 1:nrow(newData)
dim(newData) # 2880   10
attach(newData)

