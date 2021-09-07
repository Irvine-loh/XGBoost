WITH distinct_orders AS (
	SELECT DISTINCT
		Order_Number,
		DATE(date) AS date
	FROM order_1
)

SELECT 
	DATE(date, '1 DAYS', 'WEEKDAY 1', '-7 DAYS') AS week,
	COUNT(*) AS num_orders 
FROM distinct_orders
GROUP BY 1
ORDER BY 1