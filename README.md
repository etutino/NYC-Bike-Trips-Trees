# NYC-Bike-Trips-Trees
Google Data Analytics Project - NYC Bike Trips &amp; Trees

Hello! Welcome to my final project for the Coursera Google Data Analytics Certificate. For this project, I wanted to understand whether there was a relationship between number of Citi bike rides initiated and number of trees for certain areas (by zip code) in NYC. Here were the steps I took:

1. I added the New York City bike share trips (nyc_citi_bike_trips) and New York City Street Tree Census data (nyc_street_trees) public datasets into BigQuery.
2. I reviewed these datasets to understand what data was available. I learned that the NYC tree data had tree data by zip code, but the NYC bike data had station names by address (cross streets) and latitude and longitude but did not include zip codes.
3. To get zip codes of the NYC bike stations, I used a reverse geocoding script in a Google sheet to find the zip codes using latitude and longitude data. The final results of this analysis are in the lat long to zip.csv file.
4. I added the lat long to zip.csv as a new table in BigQuery so that it can be joined with the nyc_citi_bike_trips table.
5. I wrote a query to calculate the number of trees and number of bike trips initated in 2015 for each zip code. The query can be found in the bikes_trees_query.sql file. The final results of the query can be found in the zip_trips_trees.csv file.
6. I added the data from the zip_trips_trees.csv file into Tableau and created visualizations to understand the relationship between the number of Citi bike rides initiated and number of trees. The visualization can found in the bikes_trees_Tableau.png file or can also be found at the following link: https://public.tableau.com/authoring/BikeTripsandTrees-GoogleDataAnalyticsProject/Dashboard1#1
