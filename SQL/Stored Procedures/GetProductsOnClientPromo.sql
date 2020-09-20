Create Procedure GetProductsOnClientPromo
(@DescriptionLength int,
@PageNumber int,
@ProductsPerPage int,
@HowManyProducts int out)
AS

--declare a new TABLE variable
Declare @Products Table
(RowNumber int,
ProductID int,
Description nvarchar(max),
Thumbnail nvarchar(50),
Image nvarchar(50))

--pouplate the table variable with the complete list of products
Insert into @Products 
Select ROW_NUMBER () OVER (Order by Product.ProductID),
ProductID,
Case When LEN(Description)<=@DescriptionLength Then Description 
	Else SUBSTRING (Description,1,@DescriptionLength)+'...' End
	AS Description,
	Thumbnail ,Image	
From Product 

--return the total number of products using an Ouput variable
Select @HowManyProducts =COUNT (ProductID ) 
From @Products 

--extract the requested page of products
Select ProductID,Description ,Thumbnail ,Image
From @Products 
Where RowNumber >(@PageNumber -1) * @ProductsPerPage
AND RowNumber <=@PageNumber *@ProductsPerPage