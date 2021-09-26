SELECT Product.maker, AVG(PC.hd)
FROM Product, PC
WHERE Product.model = PC.model
      AND maker IN (
SELECT DISTINCT maker
FROM Product
WHERE type = 'PC'
      AND maker IN (
SELECT DISTINCT maker
FROM Product
WHERE type = 'Printer'
)
)
GROUP BY Product.maker