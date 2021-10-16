WITH T1 AS (
SELECT name, numGuns
FROM Classes, Ships
WHERE Classes.class = Ships.class
      AND type = 'bb'
UNION
SELECT ship, numGuns
FROM Classes, Outcomes
WHERE Classes.class = Outcomes.ship
      AND type = 'bb'
)
SELECT CAST(AVG(CAST(numGuns AS NUMERIC(6,2))) AS NUMERIC(6,2))
FROM T1