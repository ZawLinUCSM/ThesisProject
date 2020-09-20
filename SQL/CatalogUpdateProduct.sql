Create Procedure CatalogUpdateProduct
(@ProductID int,
@ProductName varchar(50),
@ProductDescription varchar(Max),
@Price money,
@Thumbnail varchar(50),
@Image varchar(50),
@PromoFront bit,
@PromoDept bit)
AS
Update Product 
Set 
Name =@ProductName ,
Description =@ProductDescription ,
Price =@Price ,
Thumbnail =@Thumbnail ,
Image =@Image ,
PromoFront =@PromoFront ,
PromoDept =@PromoDept
Where ProductID =@ProductID 