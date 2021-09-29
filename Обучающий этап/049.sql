SELECT Ships.name
FROM classes, Ships
WHERE Classes.class = Ships.class
      AND Classes.bore = 16
UNION
SELECT Classes.class
FROM classes, Outcomes
WHERE Classes.class = Outcomes.ship
      AND Classes.bore = 16