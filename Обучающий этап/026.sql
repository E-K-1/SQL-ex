WITH PPP AS (
SELECT price
FROM Product, PC
WHERE Product.model = PC.model
      AND Product.maker = 'A'
UNION ALL
SELECT price
FROM Product, Laptop
WHERE Product.model = Laptop.model
      AND Product.maker = 'A'
)
SELECT AVG (price)
FROM PPP