Create Procedure CatalogReomveProductFromCategory
(@ProductID int,@CategoryID int)
As
Delete from ProductCategory 
Where CategoryID =@CategoryID AND ProductID =@ProductID 