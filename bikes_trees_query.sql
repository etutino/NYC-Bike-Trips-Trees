--Query that calculates the number of trees and number of bike rides per zip code in 2015

WITH trips AS (
    SELECT
      z.zip AS zipcode,
      COUNT(b.starttime) AS num_of_bike_trips,
    FROM
      `subtle-poet-379813.nyc_citi_bike_trips.citibike_trips` AS b
    --Joining the stations_and_zipcodes table to bring in zip codes for each station
    LEFT JOIN
      `subtle-poet-379813.citi_bike_station_zipcodes.stations_and_zipcodes` AS z
    ON
      z.name = b.start_station_name
    WHERE
      b.starttime BETWEEN '2015-01-01T00:00:00' AND '2015-12-31T23:59:59' --only want to see 2015 trips to match 2015 tree data below
    GROUP BY
      z.zip
),

trees AS (
    SELECT
      zipcode,
      COUNT(*) AS tree_count
    FROM `subtle-poet-379813.nyc_street_trees.tree_census_2015`
    GROUP BY zipcode
)

SELECT
  trees.zipcode, trees.tree_count, trips.num_of_bike_trips
FROM
  trees
INNER JOIN
  trips
ON
  trees.zipcode = trips.zipcode;
