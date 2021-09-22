SELECT DISTINCT pc1.model, pc2.model, pc1.speed, pc2.ram
FROM PC AS pc1, PC AS pc2
WHERE pc1.speed = pc2.speed
      AND pc1.ram = pc2.ram
      AND pc1.model > pc2.model