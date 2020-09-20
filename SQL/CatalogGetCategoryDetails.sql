CREATE Procedure CatalogGetCategoryDetails
(@CategoryID int)
AS
Select DepartmentID,Name,Description 
From Category 
Where CategoryID =@CategoryID 