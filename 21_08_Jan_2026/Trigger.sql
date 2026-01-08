Trigger :
	Trigger is special type of code which use to create event.
	This event is execute on table. And we can create this event
		on tables.
	Trigger works only with Insert/ Update and Delete.
	When we need to insert data from from one table data change.
	We can not directly execute trigger like store procedure.
	Trigger does not support parameters.

	-- Syntax :
		-- For trigger 
		Create trigger tr_name
		on table_name
		For Insert / Update / Delete
		As
		Begin
			-- SQL Code
		End

		-- After Trigger
		Create trigger tr_name
		On table_name
		After Insert/Update/ Delete
		As
		Begin
			-- SQl code
		End

	-- Example :
		Select * from tbl_CategoryMaster

		Insert into tbl_CategoryMaster(category_Name)
		values('TV')

		Update tbl_CategoryMaster set category_Name = 'Television'
		where Category_Id = 1012