SELECT name
FROM Classes, Ships
WHERE Classes.class = Ships.class
      AND (type = 'bb' OR type IS NULL)
      AND (country = 'Japan' OR country IS NULL)
      AND (numGuns >= 9 OR numGuns IS NULL)
      AND (bore < 19 OR bore IS NULL)
      AND (displacement <= 65000 OR displacement IS NULL)