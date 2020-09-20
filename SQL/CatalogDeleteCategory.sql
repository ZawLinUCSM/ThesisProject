Create Procedure CatalogDleteCategory
(@CategoryId int)
AS
Delete From Category 
Where CategoryID =@CategoryId 