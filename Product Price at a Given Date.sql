-- 1164. Product Price at a Given Date

WITH pre_max AS(
    SELECT product_id, MAX(change_date) as md
    FROM Products
    WHERE change_date <= '2019-08-16'
    GROUP BY product_id
)

SELECT p.product_id, new_price AS price
FROM Products AS p JOIN pre_max AS pm
ON p.product_id = pm.product_id AND p.change_date = pm.md
UNION
SELECT DISTINCT product_id, 10 AS price
FROM Products
WHERE product_id NOT IN (SELECT product_id FROM pre_max);