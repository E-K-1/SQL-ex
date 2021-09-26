SELECT DISTINCT maker, type
FROM Product
WHERE maker IN (
SELECT maker
FROM Product
WHERE maker IN (
SELECT maker
FROM Product
GROUP BY maker
HAVING COUNT(DISTINCT type) = 1
)
GROUP BY maker
HAVING COUNT(model) > 1
)