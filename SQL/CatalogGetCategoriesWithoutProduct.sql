Create Procedure CatalogGetCategoriesWithoutProduct
(@ProductID int)
AS
Select CategoryID,Name 
From Category 
Where CategoryID Not In
(Select Category .CategoryID 
From Category Inner Join ProductCategory 
on Category .CategoryID =ProductCategory .CategoryID 
Where ProductCategory.ProductID =@ProductID )