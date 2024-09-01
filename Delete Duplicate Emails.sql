-- 196. Delete Duplicate Emails

DELETE FROM Person
WHERE ID NOT IN (
SELECT m
FROM
(SELECT MIN(id) as m
FROM Person
GROUP BY email) AS sq);