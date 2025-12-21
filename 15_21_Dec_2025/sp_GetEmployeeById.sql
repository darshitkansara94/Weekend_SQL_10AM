-- Parameterized SP
Create procedure sp_GetEmployeeById
(
	@EmployeeId int --7
)
As
Begin
	Select * from tbl_EmployeeMaster
	Where Employee_Id = @EmployeeId

	--Select * from tbl_EmployeeMaster
	--Where Employee_Id = 7
End


exec sp_GetEmployeeById 7

exec sp_GetEmployeeById 
	@EmployeeId = 7