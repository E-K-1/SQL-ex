SELECT DISTINCT Product.maker
FROM Product, PC
WHERE Product.model = PC.model
      AND PC.speed >= 750
INTERSECT
SELECT DISTINCT Product.maker
FROM Product, Laptop
WHERE Product.model = Laptop.model
      AND Laptop.speed >= 750