SELECT AVG(speed)
FROM Product, PC
WHERE Product.model = PC.model
      AND Product.maker = 'A'