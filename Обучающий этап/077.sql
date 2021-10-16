WITH T1 AS (
SELECT [date], COUNT(DISTINCT Trip.trip_no) AS Co
FROM Trip, Pass_in_trip
WHERE Trip.trip_no = Pass_in_trip.trip_no
      AND town_from = 'Rostov'
GROUP BY [date]
)
SELECT Co, [date]
FROM T1
WHERE Co = (SELECT MAX(Co) AS maxco FROM T1)