SELECT DISTINCT Outcomes.battle
FROM Ships, Outcomes
WHERE Ships.name = Outcomes.ship
      AND Ships.class = 'Kongo'