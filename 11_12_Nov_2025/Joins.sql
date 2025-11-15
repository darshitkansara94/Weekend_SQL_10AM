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

			-- Example :
				create database SchoolDB
				USE SchoolDB

		-- Left join :
		-- Right join :