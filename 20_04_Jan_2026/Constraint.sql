Constraint :
	To create rules and policy on tables we have constraints.

	-- Types of constraint :
		Primary Key
		Identity Key
		Foreign Key
		default :
			To set default value for column.
			We can use it on multiple columns.

			-- Syntax :
				-- Create a new table 
					Create table tbl_name
					(
						column_name datatype,
						column_name datatype default 'value',
						.
						.
						.
						column_name datatype
					)

				-- With existing table
					Alter table tbl_name
					Add constraint cn_name default ('value') for column_name

			-- Example :
				Create table tbl_StaffMaster
				(
					Staff_ID int,
					Staff_Name varchar(25) default 'Unknown',
					Staff_Qual varchar(25)
				)

				Select * from tbl_StaffMaster

				Insert into tbl_StaffMaster(Staff_ID,Staff_Qual)
				values(1,'B.E')

				Insert into tbl_StaffMaster(Staff_ID,Staff_Name,Staff_Qual)
				values(2,'Jackson','B.E')

				Insert into tbl_StaffMaster(Staff_ID,Staff_Name,Staff_Qual)
				values(3,'','B.E')

				-- Add default in existing table
				Alter table tbl_StaffMaster
				Add constraint cn_DefaultStaffQual default('None') for Staff_Qual
				
				Insert into tbl_StaffMaster(Staff_ID)
				values(4)
				
		check :
			If we want to insert or Update data in column 
				based on condition.
			We can create multiple check constraint on table.

			-- Syntax :
				-- Create a new table
					Create table tbl_name
					(
						column_name datatype,
						column_name datatype check(condition),
						.
						.
						column_NameN datatype
					)

				-- Existing table
					Alter table tbl_name
					Add constraint cn_name check(condition)

			-- Example :
				Create table tbl_StaffMaster
				(
					Staff_ID int primary key identity(1,1),
					Staff_Name varchar(25) default 'Unknown',
					Staff_Qual varchar(25),
					Staff_Age int check(Staff_Age > 18)
				)

				Select * from tbl_StaffMaster

				Insert into tbl_StaffMaster(Staff_Qual,Staff_Age)
				values('B.E',18)

				Alter table tbl_StaffMaster
				drop constraint CK__tbl_Staff__Staff__2FCF1A8A

				-- Add into existing table
				Alter table tbl_StaffMaster
				Add constraint cn_Age check(Staff_Age >= 18)

		unique :
			Restricted user to enter duplicate value.

			-- Syntax :
				-- Create new table
					Create table tbl_name
					(
						column_name datatype,
						column_name datatype unique,
						.
						.
						column_nameN datatype
					)

				-- Existing table
					Alter table tbl_name
					Add constraint cn_name unique(column_name)

			-- Example :
				Create table tbl_StaffMaster
				(
					Staff_ID int primary key identity(1,1),
					Staff_Name varchar(25) unique,
					Staff_Qual varchar(25),
					Staff_Age int check(Staff_Age > 18)
				)

				Select * from tbl_StaffMaster

				Insert into tbl_StaffMaster(Staff_Name,Staff_Qual)
				values('Stephen','B.Tech')

				-- Drop constraint
				Alter table tbl_StaffMaster
				Drop constraint UQ__tbl_Staf__373A1F82DB5CDBDC

				-- Existing table
				Alter table tbl_Staffmaster
				Add constraint cn_StaffName unique(Staff_Name)

		null :
			If we want to make column as a null.

			-- Syntax :
				Alter table tbl_name
				Alter column column_name datatype null

			-- Example :
				Alter table tbl_StaffMaster
				Alter column Staff_name varchar(15) null
				

		not null :
			If we want to make any column mandatory and restricted user
				to enter some data in it.

			-- Syntax :
				-- Create a new table
					create table tbl_name
					(
						column_name datatype,
						column_name datatype not null,
						.
						.
						.
						column_nameN datatype
					)

				-- For existing table
					Alter table tbl_name
					Alter column column_name datatype not null

			-- Example :
				Alter table tbl_StaffMaster
				Alter column Staff_Name varchar(25) not null

				Insert into tbl_StaffMaster(Staff_Name,Staff_Qual)
				values('Darshit','BE')

				Insert into tbl_StaffMaster(Staff_Qual)
				values('BE')

				Select * from tbl_StaffMaster

-- Practice Question :
	I have column "Staff_Phone", I want to make restriction 
		user can enter only 10 digit for mobile number.

	exec sp_rename 'dbo.table_name.old_column','new_column',
		'column'

				
		