Create Procedure CatalogCreateProduct
(@CategoryID int,
@ProductName nvarchar(50),
@ProductDescription nvarchar(max),
@Price money,
@Thumbnail nvarchar(50),
@Image nvarchar(50),
@PromoFront bit,
@PromoDept bit)
AS
--Declare a variable to hold the generated product ID
Declare @ProductID int
--Create the new product entry

Insert Into Product
(Name,
Description,
Price,
Thumbnail ,
Image,
PromoFront,
PromoDept)
Values
(@ProductName ,
@ProductDescription ,
@Price ,
@Thumbnail ,
@Image ,
@PromoFront ,
@PromoDept )

--Save the generated producct ID to a variable
Select @ProductID =@@IDENTITY 

--Associate the product with a category
Insert into ProductCategory (ProductID ,CategoryID )
Values(@ProductID ,@CategoryID )


