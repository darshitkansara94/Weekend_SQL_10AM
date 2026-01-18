Cursor :
	Cursor is used to update or read data row by row.
	While it reads data row by row it may create a performance issue.
	We can create a cursor just like a variable.

	-- Syntax :
		Declare @variableName datatype

		Declare cursor_name cursor for
			Select column_name from tbl_name

		open cursor_name
			fetch next from cursor_name into @variableName

			While @@FETCH_STATUS = 0
			Begin
				fetch next from cursor_name into @variableName
			End
		Close cursor_name
		Deallocate cursor_name

	-- Example :
		Select * from tbl_CategoryMaster

		Declare @CategoryId int
		Declare @CategoryName nvarchar(15)

		Declare cursor_category cursor for
			Select Category_Id,category_Name from tbl_CategoryMaster

		Open cursor_category
			Fetch next from cursor_category into @CategoryId,@CategoryName

			print(convert(nvarchar(15),@CategoryId) + ' ' + @CategoryName)

			While @@FETCH_STATUS = 0
			Begin
				Fetch next from cursor_category into @CategoryId,@CategoryName

				print(convert(nvarchar(15),@CategoryId) + ' ' + @CategoryName)
			End

		Close cursor_category
		Deallocate cursor_category