use Restaurant
go

--report 1 -this returns the total quantity for a given item
declare @Item varchar(50)
declare @QUANTITY int 
declare @package varchar(50)
set @item = 'apple'
set @package = (select package_type from Item_category where item_name like @item)
 exec spQuantFor @item, @QUANTITY output;
print cast(@quantity as varchar) +' '+ @package + '(s)'
Go

--report 2 - returns the next delivery date for a given item
declare @DAY DATE 
declare @item varchar(50)
set @item = 'apple'
 exec spNextDeliveryDate @item, @Day output;
print 'Next delivery of ' + @Item +'(s) : ' + cast(@Day as varchar)
Go

--report 3 - returns all items expiring within the coming week
exec spExpiringInWeek
Go
