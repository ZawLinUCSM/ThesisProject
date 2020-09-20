Create Procedure CatalogAssignProductToCategoryVersion
(@ProductID int,@CategoryId int)
AS
IF Exists
(select Name 
From Product 
Where ProductID =@ProductID)
AND
Exists
(
Select Name 
From Category 
Where CategoryID=@CategoryId)
AND Not Exists
(Select * 
From ProductCategory 
Where CategoryID =@CategoryId AND ProductID =@ProductID)
Insert Into ProductCategory (ProductID ,CategoryID )
Values(@ProductID ,@CategoryId )