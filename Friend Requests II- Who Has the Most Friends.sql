-- 602. Friend Requests II: Who Has the Most Friends

SELECT id, COUNT(*) AS num
FROM
(SELECT requester_id AS id FROM RequestAccepted
UNION ALL
SELECT accepter_id FROM RequestAccepted) AS fc
GROUP BY id
ORDER BY num DESC
LIMIT 1;