Primary Key :
	Primary key does not allow you to insert duplicate value as well it is not allowed
		to insert null values.
	Limitation of PK is we can not insert multiple PK in single table. We can insert only
		one per table.

	-- Syntax :
		-- With new table
			Create table tbl_name
			(
				column_1 datatype primary key,
				column_2 datatype,
				column_3 datatype
			)

		-- Existing table
			Alter table tbl_name
			Add constraint cn_name primary key(column_name)

	-- Example :
		Create table tbl_Faculty
		(
			Faculty_Id int primary key,
			Faculty_Name nvarchar(25),
			Faculty_Education nvarchar(10)
		)

		-- Existing table
			Select * from tbl_StudentMaster

			Alter table tbl_StudentMaster
			Alter column Student_Id int not null

			Alter table tbl_StudentMaster
			Add constraint cn_PK_StudentID primary key(Student_Id)

			--Update tbl_StudentMaster set
			--	Student_Id = 4 where Student_Id is null

			--Select * from tbl_StudentMaster 
			--where Student_Id is null

Identity Key :
	Identity key is also consider as auto increment key.
	It is only applied on type of int columns.
	It will insert a auto increment numbers into the column.

	-- Syntax :
		Create table tbl_name
		(
			column_name datatype identity(starting _value,incremented_value),
			column_name datatype,
			column_name datatype
		)

	-- Example :
		Create table tbl_Faculty
		(
			Faculty_Id int primary key identity(1,1),
			Faculty_Name nvarchar(25),
			Faculty_Education nvarchar(10)
		)

		Select * from tbl_Faculty

		Insert into tbl_Faculty(Faculty_Name,Faculty_Education)
		values('Yash','SQL')

Foreign Key :
	Foreign key create a relationship between two or more tables.
	Primary key of the parent table and reference column of the child table
		consider as foreign key.
	Foreign key can be null.
	If parent table PK have that value than only we can enter into the child table.
	If child table contain a value of PK then we can not delete record from 
		parent table too.
	-- Syntax :
		Create table tbl_name
		(
			column_1 datatype,
			column_2 datatype,
			column_3 datatype,

			constraint cn_name foreign key (child_columnName)
			references parent_table(column_name)
		)

		-- How to add into existing table
		Alter table tbl_name
		Add constraint cn_name foreign key (child_columnName)
			references parent_table(column_name)

	-- Example :
		Select * from tbl_Faculty

		Create table tbl_SubjectMaster
		(
			Subject_Id int primary key identity(1,1),
			Faculty_Id int,
			Subject_Name nvarchar(20),

			constraint cn_FK_FacultyId foreign key (Faculty_Id)
				references tbl_Faculty(Faculty_Id)
		)

		Select * from tbl_Faculty
		Select * from tbl_SubjectMaster

		Insert into tbl_SubjectMaster(Faculty_Id,Subject_Name)
		values(1,'SQL')

		Insert into tbl_Faculty(Faculty_Name,Faculty_Education)
		values('Stephen','Full stack')

		Insert into tbl_SubjectMaster(Faculty_Id,Subject_Name)
		values(4,'SQL')

		update tbl_SubjectMaster set Faculty_Id = null where Subject_Id = 4

		delete from tbl_Faculty where Faculty_Id = 4

