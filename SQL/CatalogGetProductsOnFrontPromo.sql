Create Procedure CatalogGetProductsOnFrontPromo
(@DescriptionLength int,
@PageNumber int,
@ProductsPerPage int,
@HowManyProducts int Output)
AS
--declare a new Table  variable
Declare @Products Table
(RowNumber int,
ProductID int,
Name nvarchar(50),
Description nvarchar(Max),
Price money,
Thumbnail nvarchar(50),
Image nvarchar(50),
PromoFront bit,
PromoDept bit)
--populate the table variable with the complete list of products
Insert into @Products 
Select ROW_NUMBER () Over (Order by Product.ProductID),
ProductID ,Name,
Case When LEN (Description)<=@DescriptionLength  Then Description 
Else SUBSTRING (Description,1,@DescriptionLength )+'...' END
AS Description,Price,Thumbnail,Image,PromoFront,PromoDept 
From Product 
Where PromoFront =1
--return the total number of products using an OUTPUT variable
Select @HowManyProducts =COUNT(ProductID) From @Products 

--extract the requested page of products
Select ProductID,Name,Description,Price,Thumbnail,Image,PromoFront,PromoDept 
From @Products 
Where RowNumber >(@PageNumber -1)*@ProductsPerPage 
And RowNumber <=@PageNumber *@ProductsPerPage 
