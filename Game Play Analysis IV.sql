-- 550. Game Play Analysis IV

WITH log AS(
    SELECT player_id, MIN(event_date) as fd
    FROM Activity
    GROUP BY player_id
)

SELECT ROUND(SUM(CASE WHEN Activity.event_date = DATE_ADD(log.fd, INTERVAL 1 DAY) THEN 1 ELSE 0 END)/COUNT(DISTINCT Activity.player_id),2) AS fraction
FROM Activity JOIN log
ON Activity.player_id = log.player_id;