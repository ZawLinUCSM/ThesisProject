Create Procedure CatalogDeleteProduct
(@ProductID int)
AS 
Delete From ProductCategory Where ProductID =@ProductID 
Delete From Product Where ProductID =@ProductID 
