Error Handling :
	Handle the error that occur during the execution / runtime  of code.
	We can display custom message to handle the error.
	There are two function Try and catch.
	Try, Our actual logic will fall under the try block.
	Catch, Error handling come under catch block

	-- Syntax :
		Begin try
			-- Statement / Logic
		End Try
		Begin catch
			-- Error handling
		End catch

	-- Example :
		Select 12 / 0

		Begin try
			Select 12 / 6

			print('Query Successfully executed')

		End try
		Begin catch
			print('Can not divide by zero')
		End catch

Transactions :
	When execution is completed without any error then only we will insert data into
		tables.
	If we will get any error during the execution we will revert the entries done
		in that execution.
	To make this possible we have commit and rollback.

	Commit :
		Once all the statement are successfully executed then commit will 
			happen.
		It will enter data into table with permenant basis.
		If commit is not done then that data is for read only purpose.

		-- Syntax :
			Begin transaction tr_name
				-- SQl statement
			Commit transaction tr_name

			Select * from tbl_categoryMaster

		-- Example :
			Begin transaction tr_Insertcategory
				Insert into tbl_CategoryMaster(category_Name)
				values('Tab2')
			Commit transaction tr_Insertcategory

	Rollback :
		Revert the entries from the table if execution is getting failed.
		Rollback is used in catch block to revert the entries if error
			occured.

		-- Syntax :
			Begin transaction tr_name

			-- If code is success
			commit transaction tr_name

			-- If there is any error in my execution
			rollback transaction tr_name
		