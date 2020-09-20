Create Procedure GetProducts
(@ProductID int)
As 
Select Brand_Attribute.BrandName ,Year_Attribute .Year,
Model_Attribute .ModelName ,Type_Attribute .TypeName ,
Price_Attribute.Price ,Color_Attribute .ColorName ,
Fuel_Attribute .FuelName ,EnginePower_Attribute .EngineName ,
HandDrive_Attribute .HandDriveName ,Milage_Attribute .Milage ,
Door_Attribute .DoorQty ,Seat_Attribute .SeatQty,Product .Description,
Product.Thumbnail ,Product .Image
From Product 
Inner Join Brand_Attribute On Brand_Attribute .BrandID=Product.BrandID 
Inner Join Year_Attribute  On Year_Attribute .YearID =Product.YearID 
Inner Join Model_Attribute On Model_Attribute.ModelID=Product.ModelID 
Inner Join Type_Attribute On Type_Attribute .TypeID =Product.TypeID 
Inner Join Price_Attribute On Price_Attribute .PriceID =Product.PriceID 
Inner Join Color_Attribute On Color_Attribute .ColorID =Product.ColorID 
Inner Join Fuel_Attribute On Fuel_Attribute .FuelID =Product.FuelID 
Inner Join EnginePower_Attribute On EnginePower_Attribute .EnginePowerID =Product.EnginePowerID 
Inner Join HandDrive_Attribute  On HandDrive_Attribute .HandDriveID =Product.HandDriveID 
Inner Join Milage_Attribute On Milage_Attribute .MilageID =Product .MilageID 
Inner Join Door_Attribute On Door_Attribute .DoorID =Product.DoorID 
Inner Join Seat_Attribute On Seat_Attribute .SeatID =Product .SeatID 
Where ProdcutID =@ProductID