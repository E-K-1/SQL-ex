SELECT Classes.class, Ships.name, Classes.country
FROM Classes, Ships
WHERE Classes.class = Ships.class
      AND numGuns >= 10