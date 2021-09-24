WITH PPP AS (
SELECT model, price
FROM PC
UNION
SELECT model, price
FROM Laptop
UNION
SELECT model, price
FROM Printer
)
SELECT model
FROM PPP
WHERE price = (SELECT MAX(price) FROM PPP)