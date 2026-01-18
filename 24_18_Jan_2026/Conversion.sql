Conversion :
	Convert a data from one datatype to any other datatype.

	-- Convert :
		Convert a data into one type to any other.
		Here we have a special format for date.

		-- Syntax :
			Convert(datatype,value,date_format)

			Here date_format is my option.

		-- Example :
			Select CONVERT(nvarchar(25),GETDATE(),131)

	-- Cast :
		The difference here is we can not convert date to any custom format just like
			convert function.

		-- Syntax :
			Cast(value as datatype)

		-- Example :
			Select Cast(GETDATE() as nvarchar(20))