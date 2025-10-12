2. String function
	String function is use to manipulate string or if we want to do any opearation on
		string value.

	-- Types of string function
		len() :
			To identify the length od srtring.

			-- Syntax :
				len(expression)

			-- Example :
				Select LEN('Hello world')

				Select LEN('Hello world ')

				Select LEN(' Hello world')

		concat :
			Merge n no of words into single string.

			-- Syntax :
				concat(expression1,expression2,...,expressionN)

			-- Example :
				Select concat('Hello','world')

				Select concat('Hello world',' ','Weltec')

		concat with + :
			Concat string using +.

			--- Syntax :
				'Hello' + 'World'

			-- Example :
				Select 'Hello'+ ' ' + 'World'

		concat_ws :
			Use to concat two or more words into single string.
			WS stand for with seperator.

			-- Syntax :
				Concat_Ws(seperator,expression1,expression2,...,expressionN)

			-- Example :
				Select concat_ws('-','Hello','World')

				Select concat_ws('-','Hello World','Weltec SQL')

				-- 123-456 789

				concat_ws('-',column1,concat_ws(' ',column2,column3))


				Select * from tbl_StudentMaster

				Select Concat_Ws('-',Student_Name,Student_Email) as NameEmail
				from tbl_StudentMaster

		trim() :
			To avoid whitespace from the string we can use trim function.
			It will remove space from starting and ending of the string.
			Whitespace :
				Any extra space at the starting and ending of the string 
					is consider as whitespace.

			-- Syntax :
				trim(expression)

			-- Example :
				Select ' Hello world ' -- Hello world 
				Select trim(' Hello world ') --Hello world

				Select trim(' Hello World') --Hello World

		rtrim() :
			Remove whitespace from ending of the string or right side of the string.

			-- Syntax :
				Rtrim(expression)

			-- Example :
				Select ' Hello world '
				Select rtrim(' Hello world ') -- Hello world				

		ltrim() :
			Remove whitespace from starting of the string or left side of the string.

			-- Syntax :
				ltrim(expression)

			-- Example :
				Select ' Hello world ' -- Hello world 
				Select ltrim(' Hello world ') -- Hello world 

		reverse :
			Reverse function display string in reverse order.

			-- Syntax :
				reverse(expression)

			-- Example :
				Select reverse('Hello World')

		substring() :
			Substring extract char from the string value.
			It has starting point and count of char that we need to extract.
			Index is always start from 1.

			-- Syntax :
				substring(expression,starting_index,count)

			-- Example :
				Select Substring('Hello World',1,3)

				Select Substring('Hello World ',10,3)

		Replace :
			Replace string or char into existing string value.

			-- Syntax :
				replace(expression,old_value,new_value)

			-- Example :
				Select replace('Hello World','l','e')

				Select replace('Hello World','d','Weltec')

3. Date function :
	Date function extract value or we can perform some operation on the date.
	it will work with datetime datatype.

	-- Types of date function :
		sysdatetime :
			Return your system date and time

			-- Syntax :
				sysdatetime()

			-- Example :
				Select sysdatetime()

		sysutcdatetime :
			UTC is Universal date and time.
			It will return UTC time which is not depend on any country or location

			-- Synatx :
				sysutcdatetime()

			-- Example :
				Select sysutcdatetime()

		getdate :
			Return date and time, But it will return date and time of the system
				where our SQL / Our database is located.

			-- Syntax :
				getdate()

			-- Example :
				Select getdate()

		getutcdate :
			It will return universal date and time.
			Compare to sysutcdatetime it will return more accurate result.

			-- Syntax :
				getutcdate()

			-- Example :
				Select getutcdate()

		datename
		datepart
		isdate
		month
		day
		year