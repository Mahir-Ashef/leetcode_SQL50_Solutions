-- 197. Rising Temperature

SELECT w1.id
FROM 
    weather w1
INNER JOIN 
    weather w2 
    ON DATE(w1.RecordDate) = DATE(w2.RecordDate) + INTERVAL 1 DAY
WHERE w1.temperature > w2.temperature;
