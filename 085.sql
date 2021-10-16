SELECT maker
FROM Product
WHERE type='PC'
GROUP BY maker
HAVING COUNT(model)>=3
EXCEPT
SELECT maker
FROM Product
WHERE type<>'PC'
UNION
(
SELECT maker
FROM Product
WHERE type='Printer'
EXCEPT
SELECT maker
FROM Product
WHERE type<>'Printer'
)