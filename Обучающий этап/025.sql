SELECT DISTINCT maker
FROM Product
WHERE type = 'Printer'
      AND maker IN (

SELECT DISTINCT maker
FROM Product
WHERE model IN (

SELECT DISTINCT model
FROM PC
WHERE speed = (SELECT MAX(speed)FROM PC
               WHERE ram = (SELECT MIN(ram) FROM PC))
INTERSECT
SELECT DISTINCT model
FROM PC
WHERE ram = (SELECT MIN(ram) FROM PC)
)
)