#The top 3 products for each productline with the highest inventory value (fields to be extracted: productline, productcode, productname, total value)

SELECT productLine, productCode, productName, TotalValue 
FROM
   	(SELECT productLine, productCode, productName, ROUND(SUM(quantityInStock * buyPrice),2) as TotalValue,
                  ROW_NUMBER() OVER (PARTITION BY productLine ORDER BY TotalValue DESC) as country_rank
      FROM products p
      GROUP BY productLine, productName
      ) ranked
WHERE country_rank <= 3
ORDER BY productLine, TotalValue DESC 
