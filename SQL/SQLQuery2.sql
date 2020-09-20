DECLARE @PRODUCTS TABLE(RowNumber int,ProductID int,Name nvarchar(50),Description nvarchar(Max))


Insert Into @PRODUCTS 
Select ROW_NUMBER () Over (Order by Product.ProductID) AS Row,ProductID,Name,Description
From Product 

Select Name,Description From @PRODUCTS 
Where RowNumber >=6 AND RowNumber <=10