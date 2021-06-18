#Downloaded the file in my repository

The repository : "C:/Users/Rachad/Desktop/Coursera/Data_Science/Exploratory"

#Unzip the file using R

setwd("C:/Users/Rachad/Desktop/Coursera/Data_Science/Exploratory")
"Data for Peer Assessment" <- unzip("exdata_data_NEI_data.zip")

#Read the files 

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

#R Code for Emissions from coal combustion-related sources across the United Sates from 1999-2008

NEI_SCC <- merge(NEI, SCC, by = "SCC")
Select_coal <- grepl("coal", NEI_SCC$Short.Name, ignore.case = TRUE)
Select_comb <- grepl("comb", NEI_SCC$Short.Name, ignore.case = TRUE)
Select_coal_comb <- (Select_coal & Select_comb)
SubsetRows <- NEI_SCC[Select_coal_comb, ]
TotalEmissionPM25 <- aggregate(Emissions ~ year, SubsetRows, sum)

#Create plot 4

png(file = "plot4.png", width = 640, height = 480)
barplot(heigh = TotalEmissionPM25$Emissions / 10^2, names.arg = TotalEmissionPM25$year, xlab = "years", ylab = "PM2.5 Emission * 10^2", col = "wheat", main = "Total Emission of PM2.5 from coal combustion-related sources in the US 1999-2008", ylim = c(0, 8000))

dev.off()


