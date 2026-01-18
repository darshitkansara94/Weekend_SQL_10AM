Alter procedure sp_InsertData
(
	@CategoryName nvarchar(15),
	@categoryId int,
	@SubCategoryName nvarchar(15),
	@SubCategoryStock int,
	@SubcategoryPrice decimal(18,2)
)
As
Begin
	Begin Try
		Begin transaction tr_Insert
			Insert into tbl_CategoryMaster(category_Name,UserId)
			values(@CategoryName,1)

			Insert into tbl_SubcategoryMaster(Category_Id,Subcategory_Name,Subcategory_Price,
				Subcategory_Stock)
			values(@categoryId,@SubCategoryName,@SubcategoryPrice,
				@SubCategoryStock)
		Commit transaction tr_Insert
	End try
	Begin catch
		Rollback transaction tr_Insert

		print('Data entry is failed')
	End catch
End

-- Execute SP
exec sp_InsertData 'Smart Watch-4',1,'iWatch',15,25000

Select * from tbl_CategoryMaster
Select * from tbl_SubcategoryMaster