Select * from tbl_EmployeeMaster

Insert into tbl_EmployeeMaster(Employee_Name,Employee_Salary,Manager_Id,Is_Active)
values('Darshit','45000',1,0)

Insert into tbl_EmployeeMaster(Employee_Name,Employee_Salary,Manager_Id,Is_Active)
values('Serpong','55000',1,0)

Exec sp_InsertEmployee 
	@EmployeeSalary = 55000	

Exec sp_InsertEmployee 
	'Serpong',
	55000,
	0

Select * from tbl_EmployeeMaster

-- Insert existing record
Exec sp_EmployeeMaster
	@ExecutionType = 'Insert',
	@EmployeeName = 'Devraj',
	@EmployeeSalary = 58000,
	@ManagerId = 3,
	@IsActive = 0

-- Update existing record
Exec sp_EmployeeMaster
	@ExecutionType = 'Update',
	@EmployeeName = 'Devraj',
	@EmployeeSalary = 69000,
	@ManagerId = 3,
	@IsActive = 1,
	@EmployeeId = 1015

-- Select all the records
Exec sp_EmployeeMaster 
	@ExecutionType = 'Select'
	
-- Select record by Employee Id
Exec sp_EmployeeMaster 
	@ExecutionType = 'Select',
	@EmployeeId = 1015