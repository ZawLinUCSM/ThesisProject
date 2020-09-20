Create Procedure CatalogCreateCategory
(@DepartmentId int,
@CategoryName nvarchar(50),
@CategoryDEscription nvarchar(50))
AS
Insert into Category (DepartmentID,Name ,Description )
Values(@DepartmentId ,@CategoryName ,@CategoryDEscription )