Create Procedure CatalogGetAllProductsInCategory(@CategoryID int)
AS
Select Product.ProductID ,Name,Description, Price,Thumbnail,
Image,PromoDept,PromoFront 
From  Product Inner Join ProductCategory 
On Product .ProductID =ProductCategory .ProductID 
Where ProductCategory .CategoryID =@CategoryID