Create trigger tr_CategoryName
on tbl_CategoryMaster
For Insert
As
Begin
	Declare @CategoryName nvarchar(15)

	Select @CategoryName = Category_Name from inserted

	print(@CategoryName)
End


Insert into tbl_CategoryMaster(category_Name)
values('Television-3')