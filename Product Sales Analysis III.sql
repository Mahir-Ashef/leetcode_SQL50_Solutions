-- 1070. Product Sales Analysis III

SELECT product_id, year AS first_year,quantity, price
FROM
(SELECT product_id, year, quantity, price,
DENSE_RANK() OVER (PARTITION BY product_id ORDER BY year ASC) AS rn
FROM Sales) AS sub_sales
WHERE rn =1;