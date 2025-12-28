Alter procedure sp_EmployeeMaster
(
	@ExecutionType nvarchar(10),
	@EmployeeId int = null,
	@EmployeeName nvarchar(15) = null,
	@EmployeeSalary decimal(18,2) = null,
	@ManagerId int = null,
	@IsActive bit = null
)
As
Begin
	If (@ExecutionType = 'Insert')
	Begin
		Insert into tbl_EmployeeMaster(Employee_Name,Employee_Salary,Manager_Id,Is_Active)
		values(@EmployeeName,@EmployeeSalary,@ManagerId,@IsActive)
	End
	Else If (@ExecutionType = 'Update')
	Begin
		Update tbl_EmployeeMaster set 
			Employee_Name = @EmployeeName,
			Employee_Salary = @EmployeeSalary,
			Manager_Id = @ManagerId
		Where
			Employee_Id = @EmployeeId
	End
	Else if (@ExecutionType = 'Delete')
	Begin
		Update tbl_EmployeeMaster set
			Is_Active = @IsActive
		Where Employee_Id = @EmployeeId
	End
	Else if (@ExecutionType = 'Select')
	Begin
		If (@EmployeeId != '')
		Begin
			Select Employee_Id,Employee_Name,Employee_Salary,Manager_Id,
			Is_Active 
			from tbl_EmployeeMaster
			Where Employee_Id = @EmployeeId
		End
		Else
		Begin
			Select Employee_Id,Employee_Name,Employee_Salary,Manager_Id,
			Case When Is_Active = 0 Then 'Active' Else 'InActive' End as Employee_Status 
			from tbl_EmployeeMaster
		End
	End
End