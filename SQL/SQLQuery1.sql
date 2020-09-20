--SELECT ROW_NUMBER () OVER (ORDER BY ProductID) AS Row,Name
--FROM Product 

SELECT Row,Name 
FROM (SELECT ROW_NUMBER () OVER(ORDER BY ProductID)  AS Row,Name
FROM Product ) AS ProductWithRowNumbers
WHERE Row>=6 AND Row<=10