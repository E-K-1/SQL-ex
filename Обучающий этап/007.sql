SELECT Product.model, Laptop.price
FROM Product, Laptop
WHERE Product.model = Laptop.model AND Product.maker = 'B'
UNION
SELECT Product.model, PC.price
FROM Product, PC
WHERE Product.model = PC.model AND Product.maker = 'B'
UNION
SELECT Product.model, Printer.price
FROM Product, Printer
WHERE Product.model = Printer.model AND Product.maker = 'B'