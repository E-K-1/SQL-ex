SELECT DISTINCT Product.type, Laptop.model, Laptop.speed
FROM Laptop, PC, Product
WHERE Product.model = Laptop.model
      AND Laptop.speed < ALL (SELECT speed FROM PC)