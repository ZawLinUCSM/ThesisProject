Create Procedure CatalogDeleteDepartment
(@DepartmentID int)
AS 
Delete FROM Department 
Where DepartmentID =@DepartmentID 