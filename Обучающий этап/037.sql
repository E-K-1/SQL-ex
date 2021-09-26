WITH PPP AS (
SELECT Classes.class, Ships.name
FROM Classes, Ships
WHERE Classes.class = Ships.class
UNION
SELECT Classes.class, Outcomes.ship
FROM Classes, Outcomes
WHERE Classes.class = Outcomes.ship
)
SELECT class
FROM PPP
GROUP BY class
HAVING COUNT(name) = 1