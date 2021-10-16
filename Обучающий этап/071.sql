SELECT maker
FROM Product LEFT JOIN PC
ON Product.model = PC.model
WHERE Product.type = 'PC'
GROUP BY maker
HAVING COUNT(Product.model) = COUNT(PC.model)