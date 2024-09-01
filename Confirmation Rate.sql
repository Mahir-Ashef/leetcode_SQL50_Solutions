-- 1934. Confirmation Rate

SELECT s.user_id, CASE WHEN c.user_id IS NULL THEN 0.00
ELSE ROUND(SUM(c.action = 'confirmed')/ COUNT(*),2)
END AS confirmation_rate
FROM Signups AS s
LEFT JOIN Confirmations AS c
ON s.user_id = c.user_id
GROUP BY user_id;