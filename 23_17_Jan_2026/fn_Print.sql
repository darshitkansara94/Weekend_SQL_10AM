Create function fn_Print
(
	@String as nvarchar(4)
)
returns nvarchar(4)
As
Begin
	return (Select @String as Output_string)
End

-- Retrieve Data from scalar function
Select dbo.fn_Print('Hello')