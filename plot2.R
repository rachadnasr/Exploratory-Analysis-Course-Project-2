#Downloaded the file in my repository

The repository : "C:/Users/Rachad/Desktop/Coursera/Data_Science/Exploratory"

#Unzip the file using R

setwd("C:/Users/Rachad/Desktop/Coursera/Data_Science/Exploratory")
"Data for Peer Assessment" <- unzip("exdata_data_NEI_data.zip")

#Read the files 

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

#Code for total emission from PM2.5 in the Baltimore City, Maryland from 1999 to 2008

BaltimoreNEI <- NEI[NEI$fips == "24510", ]
EmissionBaltimorePM25 <- aggregate(Emissions ~ year, BaltimoreNEI, sum)

#Constrcut the plot 2

png(file = "plot2.png", width = 480, height = 480)
barplot(height = EmissionBaltimorePM25$Emissions, names.arg = EmissionBaltimorePM25$year, xlab = "years", ylab = "PM2.5 Emission", col = "wheat", main = "Total Emission of PM2.5 in the Baltimore City 1999-2008", ylim = c(0, 4000))

dev.off()