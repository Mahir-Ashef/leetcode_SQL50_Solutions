-- 1661. Average Time of Process per Machine

SELECT t1.machine_id, ROUND(AVG(t1.diff),3) AS processing_time
FROM 
(SELECT a1.machine_id, a1.process_id, ABS(a2.timestamp - a1.timestamp) as diff
FROM Activity as a1
INNER JOIN Activity as a2
ON a1.machine_id = a2. machine_id
AND a1.process_id = a2.process_id
AND a1.activity_type = 'start' AND a2.activity_type = 'end') AS t1
GROUP BY t1.machine_id