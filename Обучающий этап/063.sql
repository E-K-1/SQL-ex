WITH T1 AS (
SELECT DISTINCT Passenger.ID_psg, name
FROM Passenger, Pass_in_trip
WHERE Passenger.ID_psg = Pass_in_trip.ID_psg
GROUP BY Passenger.ID_psg, name, place
HAVING COUNT(place) > 1
)
SELECT name
FROM T1