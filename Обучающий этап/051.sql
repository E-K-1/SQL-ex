WITH T1 AS (
SELECT name, displacement, numGuns
FROM Classes, Ships
WHERE Classes.class = Ships.class
UNION
SELECT ship, displacement, numGuns
FROM Classes, Outcomes
WHERE Classes.class = Outcomes.ship
),
T2 AS (
SELECT displacement, MAX(numGuns) AS numGuns
FROM T1
GROUP BY displacement
)

SELECT name
FROM T1, T2
WHERE T1.displacement = T2.displacement
      AND T1.numGuns = T2.numGuns