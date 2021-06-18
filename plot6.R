#Downloaded the file in my repository

The repository : "C:/Users/Rachad/Desktop/Coursera/Data_Science/Exploratory"

#Unzip the file using R

setwd("C:/Users/Rachad/Desktop/Coursera/Data_Science/Exploratory")
"Data for Peer Assessment" <- unzip("exdata_data_NEI_data.zip")

#Read the files 

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

#R Code for Emissions from motor vehicle sources in Baltimore City and Los Angeles County, California from 1999-2008

NEI_SCC <- merge(NEI, SCC, by = "SCC")
Select_vehicles <- grepl(pattern = "vehicle", x = NEI_SCC$SCC.Level.Two, ignore.case = TRUE)
vehicles_NEI_SCC <- NEI_SCC[Select_vehicles,]

Baltimore_MotorVehicles <- vehicles_NEI_SCC[vehicles_NEI_SCC$fips == "24510",]
Baltimore_MotorVehicles$city <- "Baltimore City"
PM25_Baltimore <- aggregate(Emissions ~ year, Baltimore_MotorVehicles, sum)


LosAngeles_MotorVehicles <- vehicles_NEI_SCC[vehicles_NEI_SCC$fips == "06037",]
LosAngeles_MotorVehicles$city <- "Los Angeles County"
PM25_LosAngeles <- aggregate(Emissions ~ year, LosAngeles_MotorVehicles, sum)

FullPlot <- rbind(Baltimore_MotorVehicles, LosAngeles_MotorVehicles)

#Create plot 6

png(file = "plot6.png", width = 680, height = 600)
library(ggplot2)
ggplot(FullPlot, aes(fill = city, x= factor(year), y= Emissions)) +
geom_bar(stat="identity") +
facet_grid(. ~ city) +
labs(x = " ", y = "PM2.5 Emission") +
labs(title = "Total Emission of PM2.5 from motor vehicle sources in the Baltimore City and Los Angeles County 1999-2008")
dev.off()

