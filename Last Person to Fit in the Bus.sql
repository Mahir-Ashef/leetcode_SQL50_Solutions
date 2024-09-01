-- 1204. Last Person to Fit in the Bus

WITH max_weight AS
(SELECT turn, person_name, SUM(weight) OVER(ORDER BY turn ASC) AS cumu_weight
FROM Queue)

SELECT person_name
FROM max_weight
WHERE turn = (SELECT MAX(turn) FROM max_weight WHERE cumu_weight <= 1000);