User Defined Function :
	UDF is a special type of code which we can reuse the same code multiple times.
	We can not directly access the function into project we need to use it through
		SP.
	Function are execute through the select statement.

	Types of function :
		-- Scalar valued function :
			Scalar valued function return single value.
			It will return string, int, decimal, float etc.

			-- Syntax :
				Create function fn_name
				(
					-- Parameter
				)
				returns datatype
				As
				Begin
					-- return (SQL statement)
				End

				-- Retrieve data from function
				Select dbo.fn_name() as alias_name
				

		Table valued function :
			Table value function return a complete table as output
			Return type of this function is table.

			-- Syntax :
				Create function fn_name
				(
					-- Parameter
				)
				returns table
				As
					return (Select Statement)

				-- To retrieve data from Table valued function
					Select * from dbo.fn_Name()
	