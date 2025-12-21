Store Procedure (SP) :
	SP is block of SQL statement. And we can store that statement in our DB.
	We are using SP to reuse the same code multiple times.
	It represent clean code and code managability.
	Every SP represent with the unique name.
	We have to start SP with the prefix 'sp_'. Space is not allowed in SP name.
	If we want to modify existing SP for that we have keyword called 'Alter'.

	Parameter :
		Parameter is use to store value just like a variable.
		But the difference is variable is used within the editor and paramter we can
			use out side the editor to store some value.
		Paramter always start with the '@' symbol.
		Space is not allowed in paramter name.

		-- Syntax :
			@param_name datatype

	-- Syntax :
		-- Default SP
		Create/Alter procedure sp_name
		As
		Begin
			-- SQL statement
		End

		-- Parameterized SP
		Create/Alter procedure sp_name
		(
			@param_name datatype,
			@param_name datatype,
			.
			.
			.
			@param_name datatype
		)
		As
		Begin
			-- SQL statement
		End

	-- How to execute SP :
		For the execution we have to use store procedure name with 
			'exec' statement.

		-- Syntax :
			exec sp_name

		-- Example :
			We have created one SP with the name 'sp_GetEmployee'. To get
				output of this SP :

			exec sp_GetEmployee

			-- Parameterized SP execution
			exec sp_GetEmployeeById 4
			




	