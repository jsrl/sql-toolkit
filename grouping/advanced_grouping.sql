WITH yr_mo_cte AS (
    SELECT
        starttime
        ,EXTRACT(YEAR FROM starttime) AS yr
        ,EXTRACT(MONTH FROM starttime) AS mo
    FROM "public_data"."citibike_trips"
    WHERE startime IS NOT NULL
)

SELECT
    yr
    ,mo
    ,COUNT(*) AS trip_count
FROM yr_mo_cte
GROUP BY GROUPING_SETS(yr,mo) -- groups by years, then by months
-- GROUP BY ROLLUP(yr,mo) -- years + months, years only, total(hierarchy intact)
-- GROUP BY CUBE(yr,mo) -- years + months, years only, months only, total (all combos)
ORDER BY 1 DESC, 2 DESC
;