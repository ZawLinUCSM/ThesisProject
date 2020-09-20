Select ROW_NUMBER() OVER(Order by ProductID) AS Row
From Product 

Select Row,Thumbnail ,Image
From
(Select ROW_NUMBER() OVer(Order by ProductID) AS Row,Thumbnail,Image
From Product ) 
AS ProductsWithRowNumbers
Where Row >=6 AND Row<=9

--declare new Table Variable

Declare @Products Table
(RowNumber int,
ProductID int,
Description nvarchar(max))

--populate the table variable with the complete list of products
Insert Into @Products
Select ROW_NUMBER () OVER (Order by Product.ProductID) AS Row,ProductID,Description
From Product 

--extract the requested page of products
Select Description From @Products 
Where RowNumber >=5 AND RowNumber <=9