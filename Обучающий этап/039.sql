WITH PPP AS (
SELECT ship, MIN(Battles.date) AS earliest
FROM Outcomes, Battles
WHERE Outcomes.battle = Battles.name
      AND Outcomes.result = 'damaged'
GROUP BY ship
)
SELECT DISTINCT Outcomes.ship
FROM Outcomes, Battles, PPP
WHERE Outcomes.battle = Battles.name
      AND Outcomes.ship = PPP.ship
      AND Battles.date > PPP.earliest