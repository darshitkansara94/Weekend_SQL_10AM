Table :
	Table is contain rows and columns.
	Every row or column may contain some data.
	The purpose of creating table is to store a data.

	Table name can not contain space.
	Table name can not start with special char.
	Duplicate table is not allowed within the same DB.
	Table name always start with the prefix 'tbl_'
		Ex : My table is Student table
			tbl_StudentMaster
			
	Columns :
		Columns are defined with the datatypes.
		Once table is created this column are behave like a row header	
			when we fetch data from table

		Column name should not start with special char
		Space is not allowed for the column name.
		Column name always start with the table name.
		Ex :My table is Student table - tbl_StudentMaster
			if i have column Id, Name, Address
			Student_Id, Student_Name, Student_Address


	-- Syntax :
		Create table tbl_Name
		(
			column_name1 datatype,
			column_name2 datatype,
			.
			.
			.
			column_NameN datatype
		)

	-- Example :
		Create table tbl_StudentMaster
		(
			-- Create column
			Student_Id int,
			Student_Name varchar(30),
			Student_Address varchar(1000)
		)

	-- How to rename table
		If we want to change the existing table name

		-- Syntax :
			Exec sp_rename 'old_tablename','new_tablename'

		-- Example :	
			Exec sp_rename 'tbl_StudentMaster','tbl_Student'

	-- Delete table :
		Delete table from the database.

		-- Syntax :
			Drop table tbl_name

		-- Example :
			Drop table tbl_Student

	-- Modify column :
		-- Change column type :
			If we want to change a datatype of the column

			-- Syntax :
				Alter table tbl_name
				Alter column column_name datatype

			-- Example :
				Alter table tbl_StudentMaster
				Alter column Student_Id nvarchar(10)

		-- Add new column
			Adding a new column into existing table.

			-- Syntax :
				Alter table tbl_Name
				Add column_name datatype

			-- Example :
				Alter table tbl_StudentMaster
				Add Student_Email varchar(50)

		-- Delete column :
			Delete column remove column from table.
			Once column is deleted we can not restore that column back.

			-- Syntax :
				Alter table tbl_Name
				Drop column column_name

			-- Example :
				Alter table tbl_StudentMaster
				Drop column Student_Email

		-- Rename column :
			Rename existing column.
			When you done with the rename we need to change all the
				references of that column.

			-- Syntax :
				Exec sp_rename 'tbl_Name.old_columnname',
				'New_columnname','column'

			-- Example :
				Exec sp_rename 'tbl_StudentMaster.Student_Address',
					'Student_Email','column'


		

