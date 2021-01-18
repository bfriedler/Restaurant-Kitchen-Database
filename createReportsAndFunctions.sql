use Restaurant
go

CREATE PROC spDeleteExpired
AS 
DELETE FROM ITEM_EXP
where exp <GETDATE();

GO

---------------------------------------------
create PROC spQuantFor
	 @ItemName  varchar(50),
	 @Quantity  VARCHAR(50) OUTPUT
AS
SELECT @Quantity = (SELECT TOTAL_Quantity 
FROM Item_Info 
WHERE item_Info.Item_Name LIKE @ITEMNAME )
GO
------------------------------------------------
CREATE PROC spNextDeliveryDate
	@ItemName  varchar(50),
	@deliveryDate date output
AS
SELECT @DeliveryDate = (select DATEADD(DAY, FREQ_DELIVERED, Last_Day_Delivered)
FROM Item_Info
WHERE Item_Name LIKE @ItemName)
GO
----------------------------------------------------
CREATE PROC spExpiringInWeek
AS
select  ITEM_NAME, Quantity, [Exp]
FROM Item_EXP
WHERE [Exp] < DATEADD(day, 7, GETDATE())
return 








