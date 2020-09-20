Create Procedure CatalogGetProductDetails
(@ProductID int)
AS 
Select Name,Description,Price,Thumbnail,Image,PromoFront,PromoDept
From Product 
Where ProductID =@ProductID 