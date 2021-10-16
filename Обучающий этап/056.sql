WITH T1 AS (
SELECT Classes.class, name
FROM Classes LEFT JOIN Ships
ON Classes.class = Ships.class
UNION
SELECT class, ship
FROM Classes, Outcomes
WHERE Classes.class = Outcomes.ship
),
T2 AS (
SELECT class, name, (CASE
                     WHEN T1.name IN (SELECT ship
                                      FROM Outcomes
                                      WHERE result = 'sunk')
                     THEN 1
                     WHEN T1.name IS NULL
                     THEN 0
                     ELSE 0
                     END) AS is_sunk
FROM T1
)
SELECT class, SUM(is_sunk)
FROM T2
GROUP BY class