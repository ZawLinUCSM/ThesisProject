Create Procedure GetSeatWithProduct
(@ProductID int)
AS 
Select SeatID,SeatQty 
From Seat_Attribute 
Where SeatID In(Select SeatID 
From Product 
Where ProdcutID=@ProductID)