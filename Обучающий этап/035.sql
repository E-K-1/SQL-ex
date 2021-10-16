SELECT model, type
FROM Product
WHERE model NOT LIKE '%[^a-z]%' OR
      model NOT LIKE '%[^0-9]%'