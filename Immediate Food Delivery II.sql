-- 1174. Immediate Food Delivery II

WITH first_order AS(
    SELECT customer_id, MIN(order_date) as min_date
    FROM Delivery
    GROUP BY customer_id
)
SELECT ROUND(SUM(CASE WHEN fo.min_date = d.customer_pref_delivery_date THEN 1 ELSE 0 END)*100 / COUNT(DISTINCT d.customer_id),2) AS immediate_percentage
FROM first_order AS fo JOIN Delivery AS d
ON fo.customer_id = d.customer_id;