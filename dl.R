library(datasets)
setwd("c:/")
if (!file.exists("tmp")) {
  dir.create("tmp")
}
setwd("c:/tmp")
temp <- tempfile()
fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(fileUrl, destfile = temp)
dateDownloaded <- date()
powerData <- read.table(unz(temp, "household_power_consumption.txt"), header = TRUE, sep = ";", na.strings = "?")
head(powerData)