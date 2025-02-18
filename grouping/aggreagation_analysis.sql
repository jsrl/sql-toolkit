-- SUM + CASE WHEN
-- Alternative: COUNT_IF (Athena aws)
-- Calculating percentages by group
SELECT
    start_station_name
    ,SUM(CASE WHEN tripduration > 600 THEN 1 ELSE 0 END) AS cnt_trips_over_10_mins
    ,COUNT_IF(tripduration > 600) AS cnt_trips_over_10_mins_2
    ,COUNT_IF(tripduration > 600) * 1.0 / COUNT(*) AS pct_trips_over_10_mins

FROM "public_data"."citibike_trips"
GROUP BY starty_station_name
ORDER BY 1
;