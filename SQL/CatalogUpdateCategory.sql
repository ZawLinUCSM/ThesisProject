Create Procedure CatalogUpdateCategory
(@CategoryID int,
@CategoryName nvarchar(50),
@CategoryDescription nvarchar(1000))
AS
Update Category 
Set Name=@CategoryName ,Description =@CategoryDescription 
Where CategoryID =@CategoryID 