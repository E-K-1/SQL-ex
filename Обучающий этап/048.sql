SELECT Classes.class
FROM Classes, Ships, Outcomes
WHERE Classes.class = Ships.class
      AND Outcomes.result = 'sunk'
      AND Outcomes.ship = Ships.name
UNION
SELECT Classes.class
FROM Classes, Outcomes
WHERE Classes.class = Outcomes.ship
      AND Outcomes.result = 'sunk'