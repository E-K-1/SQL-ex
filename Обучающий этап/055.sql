SELECT Classes.class, MIN(Ships.launched)
FROM Classes LEFT JOIN Ships
ON Classes.class = Ships.class
GROUP BY Classes.class