Create function fn_EmployeeData()
Returns Table
As
	Return (Select Employee_Id,Employee_Name,Employee_Salary 
		from tbl_EmployeeMaster)

-- To retrieve data from function
Select * from dbo.fn_EmployeeData()
