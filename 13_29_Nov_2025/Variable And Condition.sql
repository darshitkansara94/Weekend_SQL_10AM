Variables :
	Variable is use to store values inside it.
	Values are store at the execution of the code.
	Once execution is done value got removed.
	Variable name always start with the @ sign.
	Space is not allowed in variable name.

	-- Syntax :
		Declaration : We are define only variable here
			Declare @variable_name datatype

		Initialization : We are assign some value to the variable
			set @Variable_name = 'Some value'
			
		Declaration with Initialization :
			We are declaring varible name and also assign the value same time
			Declare @varible_name datatype = 'some value'

	-- Example :
		Declare @msg nvarchar(20) -- Declaration

		set @msg = 'This is Python' -- Initialization

		print(@msg)
		print(@msg)
		print(@msg)
		print(@msg)
		print(@msg)

		Declare @New_Msg nvarchar(20) = 'This is Java' -- Declaration with Initialization
		print(@new_msg)


Conditions :
	Conditions are exceutable code which worked on boolean which id true or false.
	If one part of code is true then other part of code is consider as false.

	-- Types of conditions :
		If..Else:
			We can apply only one condition.
			Either we have true or false.
			Here, condition always return true and false only. Based on that our code is executed.
			If code will be executed if my condition is true and if my condition is false than
				else code will get executed.
			We can not use if condition with select statement. But we can use CRUD operation inside
				if and else code

			-- Syntax :
				If (condition)
				Begin
					-- SQL statement (Insert/ Update/ Delete/ Select)
				End
				Else
				Begin
					-- SQL Statement (Insert/ Update/ Delete/ Select)
				End

				--------- Nested condition
				If (Condition)
				Begin
					-- SQL statement

					If (condition)
					Begin
						-- SQL statement
					End
					Else
					Begin
						-- SQL Statement
					End
				End
				Else
				Begin
					-- SQL statement
					If (condition)
					Begin
						-- SQL statement
					End
					Else
					Begin
						-- SQL Statement
					End
				End

			-- Example :
				If (5 < 6)
					Begin
						print('5 is less than 6')
					End
				Else
					Begin
						print('5 is not less than 6')
					End
				-------------------------------------
				If (5 > 6)
				Begin
					print('5 is Greater than 6')
				End
				Else
				Begin
					print('5 is not Greater than 6')
				End
				-------------------------------------
				Declare @value1 int = 11
				Declare @value2 int = 10

				If (@value1 < @value2)
				Begin
					-- print('@value1 is less than @value2') -- 5 is less than 6
					print(concat_ws(' ',@value1,'is less than',@value2))
				End
				Else
				Begin
					-- print('@value1 is not less than @value2') -- -- 5 is not less than 6
					print(concat_ws(' ',@value1,'is not less than',@value2))
				End
				-----------------------------------------------------------------
				Declare @value1 int
				Declare @value2 int

				Declare @value3 int
				Declare @value4 int

				Set @value1 = 10
				Set @value2 = 11

				Set @value3 = 5
				set @value4 = 6

				If(@value1 < @value2)
				Begin
					print(concat_ws(' ',@value1,'is less than',@value2))

					If(@value3 > @value4)
					Begin
						print(concat_ws(' ',@value3,'is less than',@value4))
					End
				End
				Else
				Begin
					print(concat_ws(' ',@value1,'is not less than',@value2))

					If(@value3 < @value4)
					Begin
						print(concat_ws(' ',@value3,'is not less than',@value4))
					End
				End

			----------------------------------------------------
			Marks = 85
			Marks is less than or equal to 35 then 'Fail'
			Marks is between 36 to 50 then 'Grade D'
			Marks is between 51 to 65 then 'Grade C'
			Marks is between 66 to 85 then 'Grade B'
			Marks is Greater than 86 then 'Grade A'




		If..Else if..Else
		Switch case