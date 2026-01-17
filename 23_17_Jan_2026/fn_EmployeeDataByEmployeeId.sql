Create function fn_EmployeeDataByEmployeeId
(
	@Employee_Id int
)
Returns Table
As
	Return (Select Employee_Id,Employee_Name,Employee_Salary 
		from tbl_EmployeeMaster Where Employee_Id = @Employee_Id)

-- To retrieve data from function
Select * from dbo.fn_EmployeeDataByEmployeeId(2)
