#Total orders which were not cancelled, split per year and month (fields to be extracted: year, month, orders)

SELECT 
	YEAR(orderDate) as Year,
	MONTH(orderDate) as Month,
	COUNT(orderNumber) as Orders
FROM orders o 
WHERE status != "Cancelled"
GROUP BY YEAR(orderDate), MONTH(orderDate)
