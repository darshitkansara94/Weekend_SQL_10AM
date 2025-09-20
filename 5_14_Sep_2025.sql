CRUD Operation :
	C : Create
	R : Read
	U : Update / Modify
	D : Delete

	Why we need CRUS operation :
		CRUD operation is perform action / manipulation of data.

	Create :
		Insert a new record into the existing table.
		When we perform insert statement, No of column and no of values should be
			equal always. perfer example : -- Example with error

		-- Syntax :
			Insert into tbl_Name(column1,column2,column3,...columnN)
			values('value1','value2','value3',...,'valueN')

		-- Example :
			Insert into tbl_StudentMaster(Student_Id,Student_Name,Student_Email)
			values('1','Abc','abc@gmail.com')

			-- Example with error
			Insert into tbl_StudentMaster(Student_Id,Student_Name)
			values('1','Abc','abc@gmail.com')

			-- Example with error
			Insert into tbl_StudentMaster(Student_Id,Student_Name,Student_Email)
			values('1','Abc')

			-- Example with selected column
			Insert into tbl_StudentMaster(Student_Id,Student_Name)
			values('2','xyz')

			-- Multiple Insert data using single Insert statement
				When we want to insert a data using single execution / single insert
					statement.

				-- Syntax :
					Insert into tbl_name(column1,column2,...,columnN)
					values(value1,value1,...,valueN), (value2,value2,...,valueN)
					,(value3,value3,..valueN),...Nvalues

				-- Example :
					Insert into tbl_StudentMaster(Student_Name,Student_Email)
					values('abc','a@gmail.com'),('xyz','')

			-- Insert with select
				Insert a new record from one table to another table.
				Either table is within the same DB or in another DB.

				-- Syntax :
					Insert into tbl_Name(column1,column2,...,columnN)
					Select column1,column2,....,columnN from tbl_name

				-- Example :
					Insert into tbl_StudentMaster1(S_Id,Name,Gmail)
					Select Student_Id,Student_Name,Student_Email 
						from tbl_StudentMaster

					Select * from tbl_StudentMaster1

					Use master

					-- Insert a data from one DB to another DB
					Insert into tbl_studentmaster2(S_Id,S_Name,S_Email)
					Select Student_Id,Student_Name,Student_Email 
						from [School_DB].dbo.tbl_StudentMaster

					Select S_Id,S_Name,S_Email from tbl_studentmaster2
	Read (Select) :
		If i want to do some operatio on the data before display to the user
			i can achieve this using read / select statement.
		This statement is bascially retrieve data from the table.
		In the context of performance, we need to mention column instead of using
			asteric(*).

		-- Syntax :
			Select * from tbl_name

			Select column1,column2,column3,...columnN from tbl_name

		-- Example :
			Select * from tbl_StudentMaster

			Select Student_Id,Student_Name,Student_Email
			from tbl_StudentMaster

			-- Selected columns
			Select Student_Name,Student_Email from tbl_StudentMaster

			Select Student_Email,Student_Name from tbl_StudentMaster


	Update :
		Update existing record from the table.
		We can modify single record or multiple records.
		If record is not present in the table then it will not throw any error
			but instead of that it will retrun message with no rows updated.

		-- Syntax :
			Update tbl_name set
				column1 = 'new_value',column2 = 'new_value'...columnN = 'new_value'

		-- Example :
			Select * from tbl_StudentMaster

			Update tbl_StudentMaster set
				Student_Email = 'a@gmail.com'

			Select * from tbl_StudentMaster


			Update tbl_StudentMaster set
				Student_Email = 'b@gmail.com'

			Select * from tbl_StudentMaster

	Delete :
		Delete statement remove all / selected records from the table.
		Once we execute the delete statement we do not have option to recover that data
			again.

		-- Syntax :
			Delete from tbl_name

		-- Example :
			Delete from tbl_studentmaster

			Select * from tbl_StudentMaster
	
			

			

