SELECT DISTINCT Product.maker, Printer.price
FROM Product, Printer
WHERE Product.model = Printer.model
      AND Printer.price = (SELECT MIN(price) FROM Printer WHERE color = 'y')
      AND Printer.color = 'y'