DataTypes :
	Datatypes are, restricting a user to enter data in a particular form 
		or particular type.

		What are the types of datatype :
			String :
				String is a combination of Alphabets, Numbers
					and special characters.
				It not mandatory that string contain all this three
					in single value.
				String is always written in single quotes ('')
				Ex :
					'Abc@123'
					'ABC'
					'ABC@',
					'@123',
					'123'

				1. Varchar :
					Varchar is use to store string values.
					It is use to store a single value language. Like english.
					Here we have created '(10)' is consider as a length.
					And length is mandatory while define.
					
					-- Syntax :
						varchar(n)

					-- Example :
						varchar(10)

						varchar(max)

						'Today is Sunday' = length is 15

				2. Nvarchar :
					Nvarchar is also using to store a value.
					Nvarchar can store multiple languages.
					Here we have created '(10)' is consider as a length.
					And length is mandatory while define.

					-- Syntax :
						nvarchar(n)

					-- Example :
						nvarchar(10)

						nvarchar(max)

				-- Examples :
					I want to store First name = varchar(20)
					I want to store address = varchar(2000)
					Description = nvarchar(max)

			Number :
				Numbers are always written between 0-9.
				
				Types of number:
					1. int
						int is used to store a number but it will store 4 bytes
							value.
						So int can not store large numbers.

						-- Syntax :
							int

						-- Example
							int

							'1 0'
							10
							1

					2. bigint
						Bigint is similar to the int datatype.
						But it has capability to store large numbers.
						I will store data in 8 bytes.

						-- Syntax :
							bigint

						-- Example :
							bigint

			Decimal :
				Decimal value store with the point between the values.
				It contain length to store a data.

				-- Syntax :
					decimal(total_length,value_after_point)

				-- Example :
					decimal(18,2) = 125.23
					decimal(18,4) = 125.2315

			Bit :
				Bit consider only binary number which are 0 and 1.
				Other than that none of the number are incuded.

				-- Syntax :
					bit

				-- Example :
					bit

			Date and Time :
				When we want to store a date and time then we can use this.

				-- Syntax :
					datetime

			Float :
				Float use to store value which is not specific.
				We can not assign length to the float datatype.
				Compared to decimal it is fast.

				-- Syntax :
					float

				-- Example :
					We can store the accurate number after the point.

			Char :
				Char is also used to storea string values.
				If length of value is less then given length
					then remaining space is filled with blank value.
				It will take exact char that is mentioned in length.

				-- Syntax :
					char(10)

				-- Example :
					char(10)

					Example :
						value = 'Today'
						if i use char, 'Today     '
						If i use char and my value is 'A' = 'A         '

						nvarchar or varchar = 'Today'
							