Create Procedure CatalogGetCategoriesWithProduct
(@ProductId int)
AS
Select Category.CategoryID ,Name 
From Category Inner join ProductCategory 
on Category .CategoryID =ProductCategory .CategoryID 
where ProductCategory.ProductID =@ProductId 