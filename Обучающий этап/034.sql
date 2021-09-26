SELECT Ships.name
FROM Classes, Ships
WHERE Classes.class = Ships.class
      AND Classes.type = 'bb'
      AND Classes.displacement > 35000
      AND Ships.launched >= 1922