create procedure CatalogAddDepartment
(@DepartmentName nvarchar(50),
@DepartmentDescription nvarchar(1000))
AS Insert into Department (Name ,Description )
Values(@DepartmentName ,@DepartmentDescription )
