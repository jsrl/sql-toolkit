-- Trace a bike as it goes on trips throughout the day
SELECT DISTINCT
    bike_id
    ,start_station_name
    ,end_station_name
    ,start_station_name
    ,stoptime
    ,tripduration
    ,CAST(starttime AS DATE) AS trip_date

    ,MAX(tripduration) OVER (PARTITION BY bike_id, CAST(starttime AS DATE)) AS longest_trip_this_day
    ,RANK() OVER (PARTITION BY bike_id, CAST(starttime AS DATE) ORDER BY tripduration DESC) AS rank_longest_trip_this_day
    ,LAG(stoptime) OVER (PARTITION BY bike_id, CAST(starttime AS DATE) ORDER BY starttime) AS prev_trip_stoptime
    ,starttime - LAG(stoptime) OVER (PARTITION BY bike_id, CAST(starttime AS DATE) ORDER BY starttime) AS idle_time

FROM "public_data"."citibike_trips"
WHERE bike_id = 28667
ORDER BY starttime
LIMIT 4
;