Alter trigger tr_LogMasterUpdate
on tbl_CategoryMaster 
For Update
As
Begin
	Declare @Category_Name nvarchar(15)
	Declare @UserId int

	-- Get value from Insert statement to Trigger
	Select @Category_Name = Category_Name from inserted
	Select @UserId = UserId from inserted

	Insert into tbl_LogMaster(Log_Description,UserId)
	values(CONCAT_WS(' ','Updated by',@UserId,
		'Value is',@Category_Name,'Added on',GETDATE()),@UserId)
End
