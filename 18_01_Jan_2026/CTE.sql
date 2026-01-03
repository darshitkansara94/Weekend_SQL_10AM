CTE :
	CTE stand for Common Table Expression.
	It will generate temporary table into the memory.
	Once execution is done that temporary table is got deleted.
	On every execution new temporary table is generated in memory.
	Also CTE we can use when we need to use column with the alias name.
	CTE always start with the keyword 'With'.

	-- Syntax :
		with cte_name as
		(
			-- SQL statement
		)

		Select * from cte_name

	-- Example :
		with cte_Employee as
		(
			Select * from tbl_EmployeeMaster
		)

		Select Employee_Name,Employee_Salary from cte_Employee

		-- Find 2nd highest salary from employee table.
		With cte_Salary as
		(
			Select 
					DENSE_RANK() over(order by Employee_salary desc) as Sr_No,
					Employee_Id,Employee_Name,Employee_Salary 
				from tbl_EmployeeMaster
		)

		Select * from cte_Salary where sr_no = 5

		-- Delete Duplicate record
			Select * from tbl_EmployeeMaster

			With cte_Employeename as
			(
				Select 
					row_number() over(partition by Employee_Name 
					order by Employee_Id desc) as SrNo,
				Employee_Name,Employee_Salary from tbl_EmployeeMaster
			)

			Select * from cte_Employeename
			where SrNo >= 2

			Select * from tbl_EmployeeMaster
		
			With cte_Employeename as
			(
				Select 
					row_number() over(partition by Employee_Name 
					order by Employee_Id desc) as SrNo,
				Employee_Name,Employee_Salary from tbl_EmployeeMaster
			)

			Delete from cte_Employeename where srno >=2



