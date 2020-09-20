CREATE PROCEDURE CatalogGetDepartmentDetails
(@DepartmentID int)
AS
SELECT Name,Description
FROM Department 
Where DepartmentID =@DepartmentID