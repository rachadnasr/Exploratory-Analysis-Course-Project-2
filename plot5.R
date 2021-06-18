#Downloaded the file in my repository

The repository : "C:/Users/Rachad/Desktop/Coursera/Data_Science/Exploratory"

#Unzip the file using R

setwd("C:/Users/Rachad/Desktop/Coursera/Data_Science/Exploratory")
"Data for Peer Assessment" <- unzip("exdata_data_NEI_data.zip")

#Read the files 

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

#R Code for Emissions from motor vehicle sources in Baltimore City from 1999-2008

NEI_SCC <- merge(NEI, SCC, by = "SCC")
Select_vehicles <- grepl(pattern = "vehicle", x = NEI_SCC$SCC.Level.Two, ignore.case = TRUE)
vehicles_NEI_SCC <- NEI_SCC[Select_vehicles,]
Baltimore_MotorVehicles <- vehicles_NEI_SCC[vehicles_NEI_SCC$fips == "24510",]
TotalEmissionPM25 <- aggregate(Emissions ~ year, Baltimore_MotorVehicles, sum)

#Create plot 5

png(file = "plot5.png", width = 640, height = 480)
barplot(heigh = TotalEmissionPM25$Emissions, names.arg = TotalEmissionPM25$year, xlab = "", ylab = "PM2.5 Emission", col = "wheat", main = "Total Emission of PM2.5 from motor vehicle sources in the Baltimore City 1999-2008", ylim = c(0, 400))

dev.off()
