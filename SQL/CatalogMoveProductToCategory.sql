Create Procedure CatalogMoveProductToCategory
(@ProductID int,@OldCategoryID int, @NewCategoryID int)
AS 
Update ProductCategory 
Set CategoryID =@NewCategoryID 
where CategoryID =@OldCategoryID 
And ProductID =@ProductID 