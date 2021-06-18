Introduction
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Fine particulate matter (PM2.5) is an ambient air pollutant for which there is strong evidence that it is harmful to human health. In the United States, the Environmental Protection Agency (EPA) is tasked with setting national ambient air quality standards for fine PM and for tracking the emissions of this pollutant into the atmosphere. Approximatly every 3 years, the EPA releases its database on emissions of PM2.5. This database is known as the National Emissions Inventory (NEI). You can read more information about the NEI at the EPA National Emissions Inventory web site.

For each year and for each type of PM source, the NEI records how many tons of PM2.5 were emitted from that source over the course of the entire year. The data that you will use for this assignment are for 1999, 2002, 2005, and 2008.

Data description
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

The zip file contains two files:

PM2.5 Emissions Data (summarySCC_PM25.rds): This file contains a data frame with all of the PM2.5 emissions data for 1999, 2002, 2005, and 2008. For each year, the table contains number of tons of PM2.5 emitted from a specific type of source for the entire year. Here are the first few rows.

fips: A five-digit number (represented as a string) indicating the U.S. county
SCC: The name of the source as indicated by a digit string (see source code classification table)
Pollutant: A string indicating the pollutant
Emissions: Amount of PM2.5 emitted, in tons
type: The type of source (point, non-point, on-road, or non-road)
year: The year of emissions recorded

Source Classification Code Table (Source_Classification_Code.rds): This table provides a mapping from the SCC digit strings in the Emissions table to the actual name of the PM2.5 source. The sources are categorized in a few different ways from more general to more specific and you may choose to explore whatever categories you think are most useful. For example, source “10100101” is known as “Ext Comb /Electric Gen /Anthracite Coal /Pulverized Coal”.


Questions/Answers
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

1 - [Have total emissions from PM2.5 decreased in the United States from 1999 to 2008? Using the base plotting system, make a plot showing the total PM2.5 emission from all sources for each of the years 1999, 2002, 2005, and 2008.]

The plot 1 (plot1.png & plot1.R) indicate that the the total emission from PM2.5 decreased from 1999 to 2008 in the United States

2 - [Have total emissions from PM2.5 decreased in the Baltimore City, Maryland (fips == "24510"\color{red}{\verb|fips == "24510"|}fips == "24510") from 1999 to 2008? Use the base plotting system to make a plot answering this question.]

The plot 2 (plot2.png & plot2.R) shows that the total emission from pm2.5 decrease in between 1999 and 2002 then increase between 2002 and 2005 and finally it decrease between 2005 ad 2008

3 - [Of the four types of sources indicated by the type (point, nonpoint, onroad, nonroad) variable, which of these four sources have seen decreases in emissions from 1999–2008 for Baltimore City? Which have seen increases in emissions from 1999–2008? Use the ggplot2 plotting system to make a plot answer this question.]

The plot 3 (plot3.png & plot3.R) shows that the non-road, non-point and on-road types of sources increase in emission from 1999 and 2008. However the point type of source increase in emission between 1999 and 2005 and decrease between 2005 and 2008

![image](https://user-images.githubusercontent.com/53124723/122547919-fc9bab00-d030-11eb-99e3-bbb1ef3bc4ae.png)


4 -[ Across the United States, how have emissions from coal combustion-related sources changed from 1999–2008?]

The plot 4 (plot4.png & plot4.R) shows that the total emission of PM2.5 from coal combustion-related sources decrease slightly between 1999 and 2005 but decrease significantly between 2005 and 2008

5 - [How have emissions from motor vehicle sources changed from 1999–2008 in Baltimore City?]

The plot 5 (plot5.png & plot5.R) shows that the emission from motor vehicle sources decrease from 1999-2008 in Baltimore city between 1999 and 2008

6 -[ Compare emissions from motor vehicle sources in Baltimore City with emissions from motor vehicle sources in Los Angeles County, California (fips == "06037"). Which city has seen greater changes over time in motor vehicle emissions?]

The plot 6 (plot6.png & plot6.R) shows that the emission from motor sources in Los Angeles County is higher than the emission from motor souces in Baltimore City
