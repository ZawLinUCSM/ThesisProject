Create Procedure CatalogGetCategoriesInDepartment
(@DepartmentID int)
AS
Select CategoryID ,Name ,Description
From Category
Where DepartmentID =@DepartmentID 