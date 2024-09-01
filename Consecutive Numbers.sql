-- 180. Consecutive Numbers

WITH counter AS
(SELECT id, num, LEAD(num,1) OVER() AS n1, LEAD(num,2) OVER() AS n2,
LEAD(id,1) OVER() AS i1, LEAD(id,2) OVER() AS i2
FROM Logs
ORDER BY id)

SELECT DISTINCT num AS ConsecutiveNums
FROM COUNTER
WHERE num = n1
AND n1= n2
AND id = i1-1
AND i1 =  i2-1;