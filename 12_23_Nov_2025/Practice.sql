Create table tbl_CategoryMaster
(
	Category_Id int primary key identity(1,1),
	category_Name nvarchar(15)
)

Create table tbl_SubcategoryMaster
(
	Subcategory_Id int primary key identity(1,1),
	Category_Id int,
	Subcategory_Name nvarchar(15),
	Subcategory_Stock int,
	Subcategory_Price decimal(18,2),

	Constraint fk_CategoryId foreign key (Category_Id) references tbl_CategoryMaster(Category_Id)
)

Create table tbl_OrderMaster
(
	Order_Id int primary key identity(1,1),
	Subcategory_Id int,
	Category_Id int,
	Order_Quantity int,
	Order_Price decimal(18,2),

	constraint fk_SubcategoryId foreign key (Subcategory_Id) 
	references tbl_SubcategoryMaster(Subcategory_Id),
	constraint fk_CategoryId_Order foreign key (Category_Id) 
	references tbl_CategoryMaster(Category_Id)
)

Select * from tbl_CategoryMaster
Select * from tbl_SubcategoryMaster
Select * from tbl_OrderMaster

Insert into tbl_CategoryMaster(category_Name)
values('Mobile'),('Laptop'),('Watch')

Insert into tbl_SubcategoryMaster(Category_Id,Subcategory_Name,Subcategory_Price,Subcategory_Stock)
values(1,'Nokia',10000,20),(1,'Apple',78000,15),(3,'Beats',5000,20)

Insert into tbl_OrderMaster(Subcategory_Id,Category_Id,Order_Price,Order_Quantity)
values(1,1,10000,1),(1,1,10000,1),(3,3,5000,2)


Select cm.category_Name,scm.Subcategory_Name,sum(om.Order_Quantity) as Quantity,
sum(om.Order_Price) as Price
from tbl_CategoryMaster cm
Inner join tbl_SubcategoryMaster scm on cm.Category_Id = scm.Category_Id
Inner join tbl_OrderMaster om on om.Subcategory_Id = scm.Subcategory_Id
group by cm.category_Name,scm.Subcategory_Name
order by cm.category_Name desc