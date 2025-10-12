Where clause :
	Where clause is use to filter record of the table.
	When we apply where filter it will not affect the actual table instead it	
		will give output only.
	We need to use different type of operators with the where clause to filter the data.
	If data is available into the table then it will return rows else return empty result.

	-- Syntax :
		Select * from tbl_name where column_name = value_to_find

	-- Example :
		Select * from tbl_StudentMaster

		Select * from tbl_StudentMaster where Student_Id = 4

		Select * from tbl_StudentMaster where Student_Name = 'Mehta'

	And operator
		And operator return the result if all the condition are satisfied.

		-- Syntax :
			Select * from tbl_name where 
				column_name = value_to_find And column_name = value_to_find

			-- With update statement
			update table_name
				set column_name =new_value
			Where column_name = value_to_find

			-- With Delete statement
			delete from tbl_name where column_name = value_to_find
			

		-- Example :
			Select * from tbl_StudentMaster

			Select * from tbl_StudentMaster
			Where Student_Id = 1 And Student_Name = 'monica'

			Select * from tbl_StudentMaster
			Where Student_Id = 5 And Student_Name = 'mehta'

			-- Update 
			Select * from tbl_StudentMaster

			Update tbl_StudentMaster set
				Student_Name = 'Shah'
			Where Student_Id = 6

			-- Delete
			Select * from tbl_StudentMaster

			Delete from tbl_StudentMaster where Student_Id = 7

	Or operator :
		If any condition is true then return output.

		-- Syntax :
			Select * from tbl_Name where column_name = value_to_find 
				or column_name = value_to_find

		-- Example 
			Select * from tbl_StudentMaster

			Select * from tbl_StudentMaster
			Where Student_Id = 1 or Student_Name = 'monica'

			Select * from tbl_StudentMaster
			Where Student_Id = 1 or Student_Name = 'shah'

			Select * from tbl_StudentMaster
			Where Student_Id = 1 or Student_Name = 'mehta'