#Downloaded the file in my repository

The repository : "C:/Users/Rachad/Desktop/Coursera/Data_Science/Exploratory"

#Unzip the file using R

setwd("C:/Users/Rachad/Desktop/Coursera/Data_Science/Exploratory")
"Data for Peer Assessment" <- unzip("exdata_data_NEI_data.zip")

#Read the files 

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

#Code for total emission from PM2.5 in the US from 1999 to 2008

TotalEmissionPM25 <- aggregate(Emissions ~ year, NEI, sum)

#Constrcut the plot 1

png(file = "plot1.png", width = 480, height = 480)
barplot(heigh = TotalEmissionPM25$Emissions / 10^3, names.arg = TotalEmissionPM25$year, xlab = "years", ylab = "PM2.5 Emission * 10^3", col = "wheat", main = "Total Emission of PM2.5 in the US 1999-2008", ylim = c(0, 8000))

dev.off()