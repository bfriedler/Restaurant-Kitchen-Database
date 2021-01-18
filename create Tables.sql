CREATE DATABASE Restaurant;
	GO


USE Restaurant 
GO

CREATE TABLE ITEM_CATEGORY
(
	Item_Name varchar(50) not null Primary Key,  
	Category varchar(50) null,
	[Location] varchar(50) null,
	[Package_Type] varchar(50) null
);

CREATE TABLE Item_Info
(
	Item_Name varchar(50) not null,  
	Company varchar(50) ,
	Vendor varchar(50) not null,
	Hechsher varchar(50) null,
	Freq_Delivered int null,
	Total_Quantity int not null,
	Last_Day_Delivered DATE null,
	PRIMARY KEY (Item_Name, Company),
	foreign key (item_name) references item_category (item_name)
);


CREATE TABLE ITEM_EXP
(
	Item_Name varchar(50) not null  ,  
	Company varchar(50),
	Delivery_Date DATE not null,
	Quantity int not null,
	[Exp] DATE not null,
	PRIMARY KEY (Item_Name , Company, Delivery_Date),
	Foreign key(item_name, company) references item_info (item_name, company)
);

Go

create trigger Item_Exp_insert_update
	ON item_exp
	AFTER INSERT, UPDATE
AS
	UPDATE Item_Info
	set Total_Quantity = coalesce((select sum(quantity)  from ITEM_EXP
	where Item_Name in (select Item_Name from inserted) 
	group by Item_Name) , 0)
	where Item_Name in (select Item_Name from inserted) 	
GO


create TRIGGER Item_Exp_delete 
	ON item_exp
	AFTER delete
AS
	UPDATE Item_Info
	set Total_Quantity = coalesce((select sum(quantity)  from ITEM_EXP
	where Item_Name in (select Item_Name from deleted) 
	group by Item_Name), 0)
	where Item_Name in (select Item_Name from deleted)
GO

Create trigger item_exp_insertdd	ON item_exp	after insertas	UPDATE Item_Info	set last_day_delivered = (select max(Delivery_Date)  from ITEM_EXP	where Item_Name in (select Item_Name from inserted) 	group by Item_Name)	where Item_Name in (select Item_Name from inserted) 
Go




