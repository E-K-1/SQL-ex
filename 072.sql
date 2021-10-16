WITH T1 AS (
SELECT ID_psg, COUNT(PIT.date) AS trip_number
FROM Trip, Pass_in_trip AS PIT
WHERE PIT.trip_no = Trip.trip_no
GROUP BY PIT.ID_psg
HAVING COUNT(DISTINCT Trip.id_comp)=1
)
SELECT name, trip_number
FROM Passenger, T1
WHERE T1.ID_psg = Passenger.ID_psg
      AND trip_number = (SELECT MAX(trip_number) FROM T1)