WITH T1 AS (
SELECT maker,
      (CASE WHEN Product.type = 'Laptop' THEN MAX(Laptop.price) END) AS Laptop_max,
      (CASE WHEN Product.type = 'PC' THEN MAX(PC.price) END) AS PC_max,
      (CASE WHEN Product.type = 'Printer' THEN MAX(Printer.price) END) AS Printer_max
FROM Product, Laptop, PC, Printer
WHERE Product.model = Laptop.model
      OR Product.model = PC.model
      OR Product.model = Printer.model
GROUP BY maker, Product.type
)
SELECT maker, SUM(Laptop_max), SUM(PC_max), SUM(Printer_max)
FROM T1
GROUP BY maker
HAVING NOT (SUM(Laptop_max) IS NULL
       AND SUM(PC_max) IS NULL
       AND SUM(Printer_max) IS NULL)