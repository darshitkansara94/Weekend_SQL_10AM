Function :
	Function is a block of code that we can reuse multiple times.
	If we found round paranthesis after the name we ca consider it as a function.

System Defined Functions  :
	Functions defined by the SQL server it self is called as sytem defined functions.
	We can use this functions multiple time in the same sql statement or in the same
		editor.

	-- Types of functions :
		1. Aggregtate function :
			Aggregate function is use to perform mathemtical operations.

			-- Types of Aggreagte function :
				max :
					Max function find a maximum value from the column.


					-- Syntax :
						Select max(expression)

					-- Example :
						Select * from tbl_studentsmarks

						Select MAX(S_Marks) from tbl_studentsmarks
				min :
					Return minimum value from the column.

					-- Syntax :
						Select MIN(expression)

					-- Example :
						Select MIN(S_Marks) as Marks from tbl_studentsmarks

						-- Select statement with error
						Select MIN() as Minimum_Marks from tbl_studentsmarks

						Select S_Marks from tbl_studentsmarks

				avg:
					Identify the average value from column.

					-- Syntax :
						Select AVG(expression)

					-- Example :
						Select AVG(s_Marks) as Avg_Marks from tbl_studentsmarks

				count :
					Return number of rows from the table.

					-- Syntax :
						Select COUNT(*)

					-- Example :
						Select * from tbl_studentsmarks

						Select COUNT(s_marks) from tbl_studentsmarks

						Select COUNT(S_Standard) from tbl_studentsmarks

				sum :
					Addition of two or more than two numbers.

					-- Syntax :
						Select sum(expression)

					-- Example :
						Select Sum(1 + 2) as addition

						Select SUM(s_Marks) as TotalMaks from tbl_studentsmarks

					-- Execute all function together
					Select MAX(S_Marks) as Max_Marks,
						MIN(S_Marks) as Min_Marks,
						AVG(S_Marks) as Avg_Marks,
						Sum(S_Marks) as Total_Marks,
						COUNT(S_Marks) as Count_Marks
					from tbl_studentsmarks

		2. String function
		3. Date function
