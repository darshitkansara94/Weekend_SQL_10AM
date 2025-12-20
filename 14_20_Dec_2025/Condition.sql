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

		If..Else if..Else :
			This is extension or extended condition of If..Else condition.
			Working of If..Else if..Else condition is similar to If..Else.
			At a time only one condition got executed.
			When we are using If..else..if we can write multiple conditions.
			Else code block will get execute if all the conditions are false.

			-- Syntax :
				If (condition)
				Begin
					-- SQL statement
				End
				else if (condition)
				Begin
					-- SQl statement
				End
				Else if (condition)
				Begin
					-- SQL statement
				End
				.
				.
				.
				Else
				Begin
					-- SQL statement
				End

			-- Example :
				--If i have two value so possibilities are :
				--	1. val1 is less than val2
				--	2. val1 is greater than val2
				--	3. val1 is equal to val2
				--	4. val1 has value and val2 is null
				--	5. val1 is null and val2 has value

				Declare @val1 int = null -- initialization and declaration
				Declare @val2 int = null -- initialization and declaration

				If (@val1 < @val2)
				Begin
					print('value1 is less than value2')
				End
				Else if (@val1 > @val2)
				Begin
					print('value1 is greater than value2')
				End
				Else if (@val1 = @val2)
				Begin
					print('value1 is equal to value2')
				End
				Else if (@val1 is not null And @val2 is null)
				Begin
					print('value2 is null')
				End
				Else If (@val1 is null and @val2 is not null)
				Begin
					print('value1 is null')
				End
				Else
				Begin
					print('All the conditions are false')
				End


				--Marks = 85
				--Marks is less than or equal to 35 then 'Fail'
				--Marks is between 36 to 50 then 'Grade D'
				--Marks is between 51 to 65 then 'Grade C'
				--Marks is between 66 to 85 then 'Grade B'
				--Marks is Greater than 86 then 'Grade A'

				Declare @Marks int = 86

				If (@Marks >= 86)
				Begin
					print('Grade A')
				End
				Else if (@Marks between 66 and 85)
				Begin
					print('Grade B')
				End
				Else if (@Marks between 51 and 65)
				Begin
					print('Grade C')
				End
				Else if(@Marks between 36 and 50)
				Begin
					print('Grade D')
				End
				Else if (@Marks <= 35)
				Begin
					print('Fail')
				End
				Else
				Begin
					print('Invalid value')
				End

		Switch case :
			Case condition is working similar as if..else and if..else if ..else condition.
			But the advantage of this condition is we can write this condition with the select 
				statement.
			The working way is similar to if..else and if..else if ..else.

			-- Syntax :
				-- Single condition
				Select 
					case when condition Then 'output' 
					Else 'output' End as alias_name
				from tbl_name

				-- Multiple condition
				Select
					Case when conidtion Then 'output'
					When condition Then 'output'
					.
					.
					Else 'output' End as alias_name
				from tbl_name

			-- Example :
				Declare @val1 int = 10
				Declare @val2 int = 5

				Select
					Case When @Val1 > @val2 Then 'Value 1 is greater than value2'
					Else 'value1 and value2 is not greater than' End as Comparision

				--Marks = 85
				--Marks is less than or equal to 35 then 'Fail'
				--Marks is between 36 to 50 then 'Grade D'
				--Marks is between 51 to 65 then 'Grade C'
				--Marks is between 66 to 85 then 'Grade B'
				--Marks is Greater than 86 then 'Grade A'

				Declare @Marks int = 35

				Select Case
					When @Marks >= 86 Then 'Grade A'
					When @Marks between 66 And 85 Then 'Grade B'
					When @Marks between 51 And 65 Then 'Grade C'
					When @Marks between 36 And 50 Then 'Grade D'
					When @marks <= 35 Then 'Fail'
					Else 'Invalid choice' End as Marks

				Select * from tbl_Student
				Select * from tbl_StudentDetail

				update tbl_StudentDetail set Student_Marks = 20 where STudent_Id = 2

				Select 
					ts.Student_Name,ts.Student_Age,
					ts.Student_Address,tsd.Student_Subject,tsd.Student_Marks,

					Case
						When tsd.Student_Marks >= 86 Then 'Grade A'
						When tsd.Student_Marks between 66 And 85 Then 'Grade B'
						When tsd.Student_Marks between 51 And 65 Then 'Grade C'
						When tsd.Student_Marks between 36 And 50 Then 'Grade D'
						When tsd.Student_marks <= 35 Then 'Fail'
						Else 'Invalid Choice' End As Grade

				from tbl_Student ts
				Inner join tbl_StudentDetail tsd on ts.Student_Id = tsd.Student_Id 


				-- Exists

				Select * from tbl_Student

				If exists (Select Student_Name from tbl_Student where Student_Name = 'priya')
				Begin
					print('This student is already exists')
				End
				Else
				Begin
					print('This student is not found')
				End
				------------------------------------------------------------------------------
				If exists (Select Student_Name from tbl_Student where Student_Name = 'priya1')
				Begin
					Declare @StudentId int

					Select @StudentId = Student_Id from tbl_Student where Student_Name = 'priya'

					Update tbl_Student set
						Student_Address = 'Vadodara'
					Where Student_Id = @StudentId
				End
				Else
				Begin
					Insert into tbl_Student(Student_Name,Student_Age,Student_Address)
					values('Devraj',26,'Vadodara')
				End
				------------------------------------------------------------------------------
				-- Not Exists
				If not exists (Select Student_Name from tbl_Student where Student_Name = 'priya')
				Begin
					print('This student is already exists')
				End
				Else
				Begin
					print('This student is not found')
				End


				