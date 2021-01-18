use Restaurant
go

--populating Item_Category
insert into ITEM_CATEGORY
(Item_Name, Category, location, [package_type]) values
('eggplant', 'vegetable', 'fridge1', 'crate'),
('tomato', 'vegetable', 'fridge1', 'crate'),
('zucchini', 'vegetable', 'fridge1', 'crate'),
('mushroom', 'vegetable', 'fridge1', 'crate'),
('romaine lettuce', 'vegetable', 'fridge1', 'crate'),
('pear', 'fruit', 'fridge1', 'crate'),
('raspberry', 'fruit', 'fridge1', 'crate'),
('apple', 'fruit', 'fridge1', 'crate'),
('cherry', 'fruit', 'fridge1', 'crate'),
('blueberry', 'fruit', 'fridge1', 'crate'),
('Pickles','Shelf','Second shelf left side', 'can'),('Tomato Sauce','Shelf','Third shelf right side', 'can'),('Baby Corn','Shelf','Bottom shelf middle', 'can'),('breadCrumbs','Shelf','Second Shelf right side', 'case'),('Duck Sauce','Shelf', 'Bottom Shelf left side', 'jar'),('Crackers','shelf','Second Shelf middle', 'case'),('Mayonnaise','Shelf','Bottom Shelf right side', 'jar'),('Cereal','Shelf','Second Shelf left side', 'case'),('olives','shelf','Second shelf left side', 'can'),('ketchup','Shelf','Third shelf left side', 'bottle'),('milk', 'refrigerator', 'fridge2', 'bottle'),('plain yogurt', 'refrigerator', 'fridge2', 'case'),('pizza dough', 'freezer', 'freezer1', 'case'),('mozzarella cheese', 'freezer', 'freezer1', 'bag'),('caesar dressing', 'refrigerator', 'fridge2', 'bottle'),('mustard', 'refrigerator', 'fridge2', 'bottle'),('spicy mayo', 'refrigerator', 'fridge2', 'bottle'),('ice cream', 'freezer', 'freezer1', 'pint'),('orange juice', 'refrigerator', 'fridge2', 'bottle'),('parmesan cheese', 'refrigerator', 'fridge2', 'case')

--populating Item_Info
insert into Item_Info
(Item_Name, Company, vendor, Hechsher, Freq_Delivered, Total_Quantity) values
('eggplant', '--', 'FAV inc',null, 3 ,0 ),
('tomato', '--', 'FAV inc',null,3, 0),
('zucchini', '--', 'FAV inc',null,3,0 ),
('mushroom', '--', 'FAV inc',null,3,0 ),
('romaine lettuce', '--', 'FAV inc',null,3,0),
('pear', '--', 'FAV inc',null, 3, 0),
('raspberry', '--', 'FAV inc',null, 3, 0),
('apple', '--', 'FAV inc',null, 3, 0),
('cherry', '--', 'FAV inc',null, 3, 0),
('blueberry', '--', 'FAV inc',null, 3, 0),
('Pickles','gefen','APB Distributors', 'OU', 30, 0),('Tomato Sauce','hunts','APB Distributors', 'crc', 14, 0),('Baby Corn','liebers','APB Distributors', 'crc', 30, 0),('breadCrumbs','kellogs','APB Distributors', 'OU', 14, 0),('Duck Sauce','golds', 'Funny Food and Co', 'OU', 14, 0),('Crackers','sneiders','APB Distributors', 'crc',14, 0),('Mayonnaise','hellmans','Funny Food and Co', 'OU',14, 0),('Cereal','munchy crunchys','APB Distributors', 'OU',14, 0),('olives','invei hagefen','Funny Food and Co', 'OU', 30, 0),('ketchup','hunts','APB Distributors', 'OU',14, 0),('milk', 'golden flow', 'Golden Flow inc', 'crcd',2, 0),('plain yogurt', 'normans', 'Dairy is Us', 'OUD',7, 0),('pizza dough', 'liebers', 'APB Distributors', 'OU',21, 0),('mozzarella cheese', 'haolam', 'Dairy is Us', 'crcd',7, 0),('caesar dressing', 'saladmate', 'Funny Food and Co', 'OU',14, 0),('mustard', 'saladmate', 'Funny Food and Co', 'crc',14, 0),('spicy mayo', 'saladmate', 'Funny Food and Co', 'OU',14, 0),('ice cream', 'kleins', 'Dairy is us', 'crcd', 14, 0),('orange juice', 'tropicana', 'APB distributors', 'OU',7, 0),('parmesan cheese', 'haolam', 'dairy is us', 'OUD',7, 0)

--populating item_exp
insert into ITEM_EXP
(Item_Name, Company, Delivery_Date, Quantity, [Exp]) values
('apple', '--', '2021-01-04', 5, '2021-08-04')
insert into ITEM_EXP
(Item_Name, Company, Delivery_Date, Quantity, [Exp]) values
('duck sauce', 'golds', '2019-05-25', 8, '2020-05-25')
insert into ITEM_EXP
(Item_Name, Company, Delivery_Date, Quantity, [Exp]) values
('crackers', 'sneiders', '2020-12-25', 5, '2021-03-25')
insert into ITEM_EXP
(Item_Name, Company, Delivery_Date, Quantity, [Exp]) values
('mayonnaise', 'hellmans', '2020-12-15', 4, '2021-01-15')
insert into ITEM_EXP
(Item_Name, Company, Delivery_Date, Quantity, [Exp]) values
('Cereal','munchy crunchys','2021-01-17', 10, '2021-03-01')
insert into ITEM_EXP
(Item_Name, Company, Delivery_Date, Quantity, [Exp]) values
('olives','invei hagefen','2021-01-17', 5, '2021-03-01')
insert into ITEM_EXP
(Item_Name, Company, Delivery_Date, Quantity, [Exp]) values
('ketchup','hunts','2021-01-17', 9, '2021-03-01')
insert into ITEM_EXP
(Item_Name, Company, Delivery_Date, Quantity, [Exp]) values
('milk','golden flow','2021-01-17', 15, '2021-01-30')
insert into ITEM_EXP
(Item_Name, Company, Delivery_Date, Quantity, [Exp]) values
('plain yogurt','normans','2021-01-17', 5, '2021-01-30')
insert into ITEM_EXP
(Item_Name, Company, Delivery_Date, Quantity, [Exp]) values
('pizza dough','liebers','2021-01-17', 5, '2021-02-28')
insert into ITEM_EXP
(Item_Name, Company, Delivery_Date, Quantity, [Exp]) values
('mozzarella cheese','haolam','2021-01-17', 5, '2021-01-30')
insert into ITEM_EXP
(Item_Name, Company, Delivery_Date, Quantity, [Exp]) values
('caesar dressing','saladmate','2021-01-17', 5, '2021-01-30')
insert into ITEM_EXP
(Item_Name, Company, Delivery_Date, Quantity, [Exp]) values
('mustard','saladmate','2021-01-17', 5, '2021-01-30')
insert into ITEM_EXP
(Item_Name, Company, Delivery_Date, Quantity, [Exp]) values
('spicy mayo','saladmate','2021-01-17', 5, '2021-01-30')
insert into ITEM_EXP
(Item_Name, Company, Delivery_Date, Quantity, [Exp]) values
('ice cream','kleins','2021-01-17', 5, '2021-01-30')
insert into ITEM_EXP
(Item_Name, Company, Delivery_Date, Quantity, [Exp]) values
('orange juice','tropicana','2021-01-17', 5, '2021-01-30')
insert into ITEM_EXP
(Item_Name, Company, Delivery_Date, Quantity, [Exp]) values
('parmesan cheese','haolam','2021-01-17', 5, '2021-01-30')
insert into ITEM_EXP
(Item_Name, Company, Delivery_Date, Quantity, [Exp]) values
('milk','golden flow','2021-01-15', 5, '2021-01-25')insert into ITEM_EXP
(Item_Name, Company, Delivery_Date, Quantity, [Exp]) values('eggplant', '--', '2021-01-17', 2, '2021-01-25')insert into ITEM_EXP
(Item_Name, Company, Delivery_Date, Quantity, [Exp]) values('tomato', '--', '2021-01-17', 4, '2021-01-25')insert into ITEM_EXP
(Item_Name, Company, Delivery_Date, Quantity, [Exp]) values('zucchini', '--', '2021-01-17', 3, '2021-01-25')insert into ITEM_EXP
(Item_Name, Company, Delivery_Date, Quantity, [Exp]) values('mushroom', '--', '2021-01-17', 6, '2021-01-25')insert into ITEM_EXP
(Item_Name, Company, Delivery_Date, Quantity, [Exp]) values('romaine lettuce', '--', '2021-01-17', 3, '2021-01-25')insert into ITEM_EXP
(Item_Name, Company, Delivery_Date, Quantity, [Exp]) values('pear', '--', '2021-01-17', 2, '2021-01-25')insert into ITEM_EXP
(Item_Name, Company, Delivery_Date, Quantity, [Exp]) values('raspberry', '--', '2021-01-17', 1, '2021-01-25')insert into ITEM_EXP
(Item_Name, Company, Delivery_Date, Quantity, [Exp]) values('apple', '--', '2021-01-17', 3, '2021-01-25')insert into ITEM_EXP
(Item_Name, Company, Delivery_Date, Quantity, [Exp]) values('cherry', '--', '2021-01-17', 1, '2021-01-25')insert into ITEM_EXP
(Item_Name, Company, Delivery_Date, Quantity, [Exp]) values('blueberry', '--', '2021-01-17', 1, '2021-01-25')insert into ITEM_EXP
(Item_Name, Company, Delivery_Date, Quantity, [Exp]) values('Pickles', 'gefen', '2021-01-10', 2, '2022-01-20')
insert into ITEM_EXP
(Item_Name, Company, Delivery_Date, Quantity, [Exp]) values('Tomato Sauce', 'hunts', '2021-01-10', 5, '2022-01-20')insert into ITEM_EXP
(Item_Name, Company, Delivery_Date, Quantity, [Exp]) values('Baby Corn', 'liebers', '2021-01-10', 2, '2022-01-28')insert into ITEM_EXP
(Item_Name, Company, Delivery_Date, Quantity, [Exp]) values('breadCrumbs', 'kellogs', '2021-01-10', 4, '2022-01-15')insert into ITEM_EXP
(Item_Name, Company, Delivery_Date, Quantity, [Exp]) values('tomato', '--', '2021-01-10', 4, '2021-01-20')
insert into ITEM_EXP
(Item_Name, Company, Delivery_Date, Quantity, [Exp]) values('Pickles', 'gefen', '2020-12-21', 2, '2021-12-20')insert into ITEM_EXP
(Item_Name, Company, Delivery_Date, Quantity, [Exp]) values('romaine lettuce', '--', '2021-01-10', 3, '2021-01-19')

--showing all data currently in database
select * from ITEM_CATEGORY
select * from Item_Info
SELECT * FROM ITEM_EXP





