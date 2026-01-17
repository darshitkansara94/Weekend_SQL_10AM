Alter procedure sp_SelectDivision
(
	@Value1 as int,
	@Value2 as int
)
As
Begin
	Begin Try
		Select @Value1 / @Value2 as Division
	End try
	Begin catch
		print('Error occured')
	End catch
End

Exec sp_SelectDivision
	@Value1 = 12, @Value2 = 0