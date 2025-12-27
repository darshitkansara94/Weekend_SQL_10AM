-- Insert data into table using SP
Alter procedure sp_InsertCategory
(
	-- Paramater
	@Category_Name nvarchar(15) = 'Unknown'
)
As
Begin
	-- SQL statement
	Insert into tbl_CategoryMaster(category_Name)
	values(@Category_Name)

	Select * from tbl_CategoryMaster
End

Exec sp_InsertCategory @Category_Name= 'Washing machine'