Operators :
	Operator is used to compare values or use to filter the values based on operator.

	1. Comparision Operator
		Compare two values which is Left side value and right side value.

		-- Types of comparision Operator :
			= (Equal to)
				Left side and right side values are same.

				-- Example :
					Select * from tbl_StudentMaster
					Where Student_Id = 5

			> (Greater than) :
				Compare two values left side value is less and right side value is bigger.

				-- Example :
					Select * from tbl_StudentMaster
					Where Student_Id > 5

			< (Less than) :
				Compare two values left side value is greater than right side value.

				-- Example :
					Select * from tbl_StudentMaster
					where Student_Id < 5

			>= (Greater than or equal to) :
				Compare two values left side value is less and right side value is bigger
				or both the the values are equal.

				-- Example :
					Select * from tbl_StudentMaster
					Where Student_Id > 5

					Select * from tbl_StudentMaster
					Where Student_Id >= 5

			<= (Less than or equal to) :
				Compare two values left side value is greater than right side value
				or both the values are equal.

				-- Example :
					Select * from tbl_StudentMaster
					where Student_Id < 5

					Select * from tbl_StudentMaster
					where Student_Id <= 5

			<> (Not equal) :
				Not equal to return all the id except mentioned on the right side value.
				We can written not equal to with the sign '!='.

				-- Example :
					Select * from tbl_StudentMaster
					where Student_Id <> 5

					-- With != sign
					Select * from tbl_StudentMaster
					where Student_Id != 5

	2. Logical Operator :
		Logical operator applied when we  want to filter based on some conditions.

		-- Types of logical operator :
			And 
			or
			in :
				We can filter out multiple record for the same column.
				We can filter any datatype of values.

				-- Syntax :
					Select column1,column2 from tbl_name
					where column_name in (value1,value2,value3...)

				-- Example :
					Select * from tbl_StudentMaster
					where 
						Student_Id = 5 or
						Student_Id = 6 or
						Student_Id = 7


					Select * from tbl_StudentMaster
					Where Student_Id in (5,6,7)

					Select * from tbl_StudentMaster
					where Student_Name in ('Monica','Ashutosh','Darshit','Mehta')

			not in :
				Not in return all the value except mentioned in filters.

				-- Syntax :
					Select column1,column2.. from  tbl_name
					Where column_name not in (value1,value2,value3....)

			like :
				Like operator use to filter value based on the three searching 
				criteria which are Startwith, Endwith and Contains.

				Searching criteria :
					If '%' sign is come after any char/ string then it will consider as
						startwith
					If '%' sign is come before any char / string then it will consider as
						End with

					If '%' is on both the side of char / string then it will consider as
						contains

				-- Syntax :

					-- Startwith
					Select column1,column2... from tbl_name
					where column_name like 'char/string%'

					-- Endwith
					Select column1,column2... from tbl_name
					where column_name like '%char/string'

					-- Contains
					Select column1,column2... from tbl_name
					where column_name like '%char/string%'

				-- Example :
					Select * from tbl_StudentMaster

					-- Startwith
						Select * from tbl_StudentMaster
						where Student_Name like 'as%'

					-- End with
						Select * from tbl_StudentMaster
						where Student_Name like '%ck'

					-- Contains
						Select * from tbl_StudentMaster
						where Student_Name like '%a%'

			not like :
				It is opposite of like, whatever char / string we filter apart from that 
					output will be returned.
				It is also follow the same searching criteria as like.
				
				-- Syntax :
					-- Startwith
					Select column1,column2... from tbl_name
					where column_name not like 'char/string%'

					-- Endwith
					Select column1,column2... from tbl_name
					where column_name not like '%char/string'

					-- Contains
					Select column1,column2... from tbl_name
					where column_name not like '%char/string%'

				-- Assignment

			null :
				When we want to filter value which are null.

				-- Syntax :
					Select column1,column2,.. from tbl_name
					where column_name is null

				-- Example :
					Select * from tbl_StudentMaster
					where Student_Email is null

			not null :
				It return values which are not null for that column.

				-- Syntax :
					Select column1,column2,.. from tbl__name
					where column_name is not null

				-- Assignment

			between :
				When we need to filter out the data using the range.

				-- Syntax :
					Select column1,column2,.. from tbl_name
					where column_name between value1 and value2

				-- Example :
					Select * from tbl_StudentMaster
					where Student_Id between 1 and 5

			not between
				It is filter out records which is not mentioned in the range.

				-- Syntax :
					Select column1,column2,.. from tbl_name
					where column_name not between value1 and value2

				-- Assignment

			Exists :
				If we want to verify that the data is present or not in our table / column.

			not exists

			
			
			
			