Create Procedure CatalogGetProductsOnDeptPromo
(@DepartmentID int,
@DescriptionLength int,
@PageNumber int,
@ProductsPerPage int,
@HowManyProducts int OUTPUT)
AS
--declare a new Table variable
Declare @Products Table
(RowNumber int,
ProductID int,
Name nvarchar(50),
Description nvarchar(max),
Price money,
Thumbnail nvarchar(50),
Image nvarchar(50),
PromoFront bit,
PromoDept bit)
-- populate the table variable with the complete list of products
Insert into @Products 
Select ROW_NUMBER () Over (Order By ProductID) As Row,
ProductID,Name,SUBSTRING (Description,1,@DescriptionLength)+'...' AS Description,
Price,Thumbnail,Image,PromoFront,PromoDept 
From (
Select Distinct Product .ProductID ,Product.Name,
Case When LEN(Product .Description )<=@DescriptionLength Then Product.Description 
Else SUBSTRING (Product .Description ,1,@DescriptionLength)+'...' END
AS Description,Price, Thumbnail,Image,PromoFront,PromoDept
From Product Inner Join ProductCategory 
On Product .ProductID =ProductCategory .ProductID 
Inner Join Category 
ON ProductCategory .CategoryID =Category .CategoryID 
Where Product.PromoDept =1
And Category .DepartmentID =@DepartmentID) AS ProductOnDepr
--return the total number of products using an OUTPUT vairable
Select @HowManyProducts =COUNT (ProductID) From @Products 
--extract the requested page of products
Select ProductID,Name,Description,Price ,Thumbnail,Image,PromoFront,PromoDept  
From @Products 
Where RowNumber >(@PageNumber -1)*@ProductsPerPage 
AND RowNumber <=@PageNumber *@ProductsPerPage 
