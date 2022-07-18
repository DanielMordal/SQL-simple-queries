# A. The clients who had cancelled orders (fields to be extracted: client name, country, city)

SELECT customerName as "Client name", country as Country, city as City
FROM customers c 
JOIN orders o on o.customerNumber = c.customerNumber 
WHERE status = "Cancelled"
