SELECT Product.maker, AVG(Laptop.screen)
FROM Product, Laptop
WHERE Product.model = Laptop.model
GROUP BY Product.maker