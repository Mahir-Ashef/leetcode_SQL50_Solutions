-- 1251. Average Selling Price

SELECT Prices.product_id, ROUND(SUM(Prices.price*UnitsSold.units)/SUM(UnitsSold.units),2) as average_price
FROM Prices JOIN UnitsSold
ON Prices.product_id = UnitsSold.product_id
AND purchase_date BETWEEN Prices.start_date AND Prices.end_date 
GROUP BY Prices.product_id;