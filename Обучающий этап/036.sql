WITH PPP AS (
SELECT Outcomes.ship
FROM Classes, Outcomes
WHERE Outcomes.ship = Classes.class
UNION ALL
SELECT Ships.name
FROM Classes, Ships
WHERE Ships.name = Classes.class
)
SELECT DISTINCT ship
FROM PPP