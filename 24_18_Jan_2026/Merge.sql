Merge :
	Merge will sync a data between the two same type of tables.
	To merge data we have a concept called source and target.
	Source is a table where we take data from.
	Target is a table where we insert / update / delete data.

	-- Syntax :
		Merge into target_table as target_tbl
		using source_table as source_tbl
		on target_tbl.column_name = source_tbl.column_name
		When matched then
			-- Update
		When not matched by target then
			-- Insert

	-- Example :
		-- Target table
		Create table tbl_Employee
		(
			Employee_Id int primary key identity(1,1),
			Employee_Name nvarchar(15),
			Employee_Salary decimal(18,2)
		)

		-- Source table
		Create table tbl_NewEmployee
		(
			Employee_Id int primary key identity(1,1),
			Employee_Name nvarchar(15),
			Employee_Salary decimal(18,2)
		)


		Insert into tbl_Employee(Employee_Name,Employee_Salary)
		values('Michel',56000),('Stephen',54000),('Yash',69000)

		Insert into tbl_NewEmployee(Employee_Name,Employee_Salary)
		values('Ashutosh',76000),('Darshit',54000),('Stephen',96000)

		Select * from tbl_Employee
		Select * from tbl_NewEmployee

		Merge into tbl_Employee as target_tbl
		using tbl_NewEmployee as source_tbl
		on target_tbl.Employee_Id = source_tbl.Employee_Id
		When matched Then
			-- Update
			Update set target_tbl.Employee_Name = source_tbl.Employee_Name,
				target_tbl.Employee_Salary = source_tbl.Employee_Salary

		When not matched by target then
			-- Insert
			Insert (Employee_Name,Employee_Salary)
			values(source_tbl.Employee_Name,source_tbl.Employee_Salary);