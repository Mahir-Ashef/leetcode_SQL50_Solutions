-- 585. Investments in 2016
SELECT ROUND(SUM(tiv_2016),2) AS tiv_2016
FROM
(SELECT tiv_2016, COUNT(*) OVER(PARTITION BY tiv_2015) AS cnt_same_inv,
COUNT(*) OVER(PARTITION BY lat,lon) AS cnt_city
FROM Insurance) AS sq
WHERE cnt_same_inv>1 AND cnt_city = 1;