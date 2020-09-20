Create Procedure CatalogAssignProductCategory
(@ProductId int,@CategoryID int)
AS
Insert into ProductCategory (ProductID ,CategoryID )
Values (@ProductId ,@CategoryID )