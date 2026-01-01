Ranking Function :
	Ranking function is use to give serial number or sequence number to the 
		data.

	-- Types of Ranking functions :
		1. Row_Number() :
			Row_number function is use to give sequential number to the 
				data.
			It can affect only in output of the data not for the actual table.

			-- Syntax :
				Select ROW_NUMBER() over(order by column_name asc/desc) as alias_name,
					column_name,...,column_nameN from tbl_name

			-- Example :
				Select * from tbl_EmployeeMaster

				Select 
				ROW_NUMBER() over(order by Employee_Id) as SrNo, Employee_Id,
				Employee_Name,Employee_Salary
				from tbl_EmployeeMaster

				Select 
				ROW_NUMBER() over(order by Employee_Name desc) as SrNo, Employee_Id,
				Employee_Name,Employee_Salary
				from tbl_EmployeeMaster

				delete from tbl_EmployeeMaster where Employee_Id = 4

		2. Dense_Rank() :
			Dense_rank give same sequential number to the duplicate data.
			But that column must be part of order by.
			To identify duplicate records we need dense_rank function.

			-- Syntax :
				Select dense_rank() over(order by column_name asc/desc) as alias_name,
					column_name,...,column_nameN from tbl_name

			-- Example :
				Select * from tbl_EmployeeMaster

				Select 
					DENSE_RANK() over(order by Employee_Id) as Sr_No,
					Employee_Id,Employee_Name,Employee_Salary 
				from tbl_EmployeeMaster

				Select 
					DENSE_RANK() over(order by Employee_Name) as Sr_No,
					Employee_Id,Employee_Name,Employee_Salary 
				from tbl_EmployeeMaster

				Select 
					DENSE_RANK() over(order by Employee_salary) as Sr_No,
					Employee_Id,Employee_Name,Employee_Salary 
				from tbl_EmployeeMaster

		Partition By :
			Partition by will give sequential number for duplicate value and 
				start index with 1 for the non duplicate values.


			