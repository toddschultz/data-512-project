# Author
Todd Schultz

# Abstract
Today's air transportation system has never provided more options for moving about the globe. However, the increase availability of flights has strained resources in the US that were designed and built decades ago for a much smaller air transportation system. Now, delays and cancellations are common in the US air traffic system and generates an enourmous amount wasted time. The goal of this study is to provide information to US travelers to help ease the frustrations of arrival delays. Thus, this report analyzes public domain data from the US Department of Transportation's Bureau of Transportation Statistics to compare the average delays for airports that service the same major metropolitan area. The results show a significant difference in proportion of arrival flights delayed and mean arrival delay at airports servicing the same metropolitan area. In particular, JFK International Airport for New York City, Oakland International Airport or San Jose International Airport for the Bay Area, and Midway International Airport for Chicago have a lower proportion of arrival flights delayed and a shorter mean arrival flight delay as compared to the other airports in the respective metropolitan areas.

# Data source
The data for this project was from Kaggle Datasets dataset of Airline Delays found at https://www.kaggle.com/usdot/flight-delays released under CC0:Public Domain license. The dataset provides the following introduction. 

The U.S. Department of Transportation's (DOT) Bureau of Transportation Statistics (BTS) tracks the on-time performance of domestic flights operated by large air carriers. Summary information on the number of on-time, delayed, canceled and diverted flights appears in DOT's monthly Air Travel Consumer Report, published about 30 days after the month's end, as well as in summary tables posted on this website. The full data files are not provided in this GitHub repo as they exceed the 100 MB file size limit and are readily available on Kaggle Datasets. However, a data file with 100,000 random samples from the full dataset is provided along with support information about the airline and airport codes. 

Thus the original source of the data is the U.S. Department of Transportation's Bureau of Transportation Statistics and therefore is public domain data and can be found at https://www.transportation.gov/airconsumer/air-travel-consumer-reports. 

# Files included in the project
In the flight-delays folder
* airlines.csv - table mapping the 2 letter IATA airline code to the full airline name
* airports.csv - table mapping the 3 letter IATA airport code to the full airport name, city, state, country and latitude and longitude coordinates
* flightssmall.csv - sample data file with 100,000 random rows from the full data file


Note: the dataset files are not included here as they exceed the file size limit from GitHub. You'll need to download them manually at https://www.kaggle.com/usdot/flight-delays. 

# Limitations
This study is subjected to limitations regarding any conclusions due to several factors. The largest limiting factor is the limited time scope of the data to be used for analysis. All of the data is from 2015 and does not represent any improvements implemented by the airlines or airport in addressing systematic delay issues since the begining of 2016. The second largest limitation is focusing on a single contributing factor, the arrival airport. There may be confound effects with other contributing factors such as departing airport, airline, weather, and flight route. Studying only the single contributing factor should provide insight to the main effects of the arrival airport as the arrival flights should be respresentative of the population with the effects of the other contributing factors averaging out. Another important limitation is the choice of airports to compare for the major metropolitan areas. In some cases the selection of airport is self-evident but in other cases the choice is not clear. Only the major international airports that most travelers via commerical airlines would be exposed to are selected manually. Other subjective or objective criteria could be used to select airports such distance from closest city center, presents of international flights, and the airport size which could be measured by the number of arrivals and departures a year.