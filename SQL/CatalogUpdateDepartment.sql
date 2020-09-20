Create Procedure CatalogUpdateDepartment
(@DepartmentID int,
@DepartmentName nvarchar(50),
@DepartmentDescription nvarchar(1000))
AS
Update Department 
Set Name =@DepartmentName ,Description =@DepartmentDescription
Where DepartmentID =@DepartmentID 