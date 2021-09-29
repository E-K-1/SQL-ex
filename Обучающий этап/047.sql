WITH T1 AS (
SELECT Classes.country, Ships.name AS ship
FROM Classes, Ships
WHERE Classes.class = Ships.class
UNION
SELECT Classes.country, Outcomes.ship AS ship
FROM Classes, Outcomes
WHERE Classes.class = Outcomes.ship
),
T2 AS (
SELECT DISTINCT country
FROM T1
WHERE ship NOT IN (SELECT Outcomes.ship FROM Outcomes WHERE result = 'sunk')
)
SELECT DISTINCT country
FROM T1
EXCEPT
SELECT DISTINCT country
FROM T2