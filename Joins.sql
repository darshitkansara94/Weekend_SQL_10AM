Joins :
	Join is combine two or more tables together and return single o/p.
	When we want to combine multiple table into single sql statement then
		we will use join.

	Types of join :
		-- Inner join :
			Inner join return a common data between two or multiple tables.
			It will consider PK of parent table and reference key of the child 
				table to identify the common records.
			It is not always case that we need to use foreign key to connect 
				two tables.

			-- Syntax :
				Select column1,column2,column3...,columnN from tbl_name1
				Inner join tbl_name2
					on tbl_name1.column = tbl_name2.column

				Select column1,column2,column3...,columnN from tbl_name1
				Inner join tbl_name2 on
					tbl_name1.columnName = tbl_Name2.columnName
				Inner join tbl_name3 on tbl_name2.columnName = tbl_name3.coumnName

			-- Example :
				create database SchoolDB
				USE SchoolDB

				Select * from tbl_Student -- Parent table
				Select * from tbl_StudentDetail -- Child table

				Select * from tbl_Student
				Inner Join tbl_StudentDetail
					on tbl_Student.Student_Id = tbl_StudentDetail.Student_Id

				Select s.Student_Id,s.Student_Name,sd.Student_Subject,
				sd.Student_Marks
				from tbl_Student s
				Inner Join tbl_StudentDetail sd
					on s.Student_Id = sd.Student_Id

				

		-- Left join :
			Left join returns all the data from left table and 
				matching data from both the tables.
			Sequencig of the table may change the output.

			-- Syntax :
				Select column1,column2,column3...,columnN from tbl_name1
				Left join tbl_name2 on
					tbl_name1.columnName = tbl_Name2.columnName

				Here, tbl_name1 comes first so this is consider as left table
					and after that immediately tbl_name2 comes so this table
					is consider as right table.

				Select column1,column2,column3...,columnN from tbl_name1
				Left join tbl_name2 on
					tbl_name1.columnName = tbl_Name2.columnName
				Left join tbl_name3 on tbl_name2.columnName = tbl_name3.coumnName

			-- Example :
				Select * from tbl_Student
				Select * from tbl_StudentDetail

				Select * from tbl_Student Left join tbl_StudentDetail
				on tbl_Student.Student_Id = tbl_StudentDetail.Student_Id

				Select * from tbl_Student Left join tbl_StudentDetail
				on tbl_StudentDetail.Student_Id = tbl_Student.Student_Id

				Select * from tbl_StudentDetail Left join tbl_Student
				on tbl_Student.Student_Id = tbl_StudentDetail.Student_Id

		-- Right join :
			Right join return all the data from right table and
				matching data from both the tables.
			Here, Changing the sequence of table may change output.

			-- Syntax :
				Select * from tbl_name1 Right join tbl_name2
					on tbl_name1.columnName = tbl_name2.columnName

			-- Example :
				Select * from tbl_Student
				Select * from tbl_StudentDetail

				Select * from tbl_Student Right join tbl_StudentDetail
				 on tbl_student.Student_Id = tbl_StudentDetail.Student_Id

				Select * from tbl_StudentDetail Right join tbl_Student
				 on tbl_student.Student_Id = tbl_StudentDetail.Student_Id