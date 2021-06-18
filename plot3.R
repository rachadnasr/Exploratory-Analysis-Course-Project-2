#Downloaded the file in my repository

The repository : "C:/Users/Rachad/Desktop/Coursera/Data_Science/Exploratory"

#Unzip the file using R

setwd("C:/Users/Rachad/Desktop/Coursera/Data_Science/Exploratory")
"Data for Peer Assessment" <- unzip("exdata_data_NEI_data.zip")

#Read the files 

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

#Code for total emission from PM2.5 of the four types of sources (point, nonpoint, onroad, nonroad) in the Baltimore City, Maryland from 1999 to 2008

BaltimoreNEI <- NEI[NEI$fips == "24510", ]
EmissionBaltimorePM25 <- aggregate(Emissions ~ year + type, BaltimoreNEI, sum)

#Constrcut the plot 3

png(file = "plot3.png", width = 600, height = 600)
library(ggplot2)
ggplot(EmissionBaltimorePM25, aes(fill = type, x = factor(year), y = Emissions)) + 
geom_bar(stat="identity") +
facet_grid(. ~ type) +
labs(x = " ", y = "PM2.5 Emission") +
labs(title = "total emission from PM2.5 of the four types of sources in the Baltimore City 1999-2008")
dev.off()


