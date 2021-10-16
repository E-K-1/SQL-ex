WITH T1 AS (
SELECT country, name
FROM Classes, Ships
WHERE Classes.class = Ships.class
UNION
SELECT country, ship
FROM Classes, Outcomes
WHERE Classes.class = Outcomes.ship
)
SELECT DISTINCT battle
FROM T1, Outcomes
WHERE T1.name = Outcomes.ship
GROUP BY battle, country
HAVING COUNT(name) >= 3