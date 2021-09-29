WITH
P1 AS (
SELECT DISTINCT Outcomes.ship
FROM Outcomes, Battles
WHERE Outcomes.battle = Battles.name
      AND Battles.name = 'Guadalcanal'
),

P2 AS (
SELECT class AS name, displacement, numGuns
FROM Classes
UNION
SELECT Ships.name, Classes.displacement, Classes.numGuns
FROM Classes, Ships
WHERE Classes.class = Ships.class
)

SELECT P1.ship, P2.displacement, P2.numGuns
FROM P1 LEFT JOIN P2
ON P1.ship = P2.name