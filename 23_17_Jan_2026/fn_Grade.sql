Create function fn_Grade
(
	@Marks int
)
returns nvarchar(10)
As
Begin
	return (
		Select case	
			When @Marks >= 90 Then 'Grade A'
			When @Marks between 70 and 89 Then 'Grade B'
			When @Marks between 60 and 69 Then 'Grade C'
			When @Marks between 45 and 59 Then 'Grade D'
			When @Marks between 44 and 35 Then 'Grade E'
			Else 'Grade F' End 
	)
End

-- Retrieve data from function
Select dbo.fn_Grade(85) as Marks

Select * from tbl_StudentDetail
Select * from tbl_StudentMaster



Select Student_Name,Student_Age,StudentDetail_Subject,StudentDetail_Marks,
dbo.fn_Grade(StudentDetail_Marks) as Marks
from tbl_StudentDetail
Inner join tbl_StudentMaster 
	on tbl_StudentDetail.Student_Id = tbl_StudentMaster.Student_Id


-- UDF
-- Inner join
-- SDF -> Aggregate function
-- Group by
-- Order by

Select Student_Name,
dbo.fn_Grade(Sum(StudentDetail_Marks)) as Marks
from tbl_StudentDetail
Inner join tbl_StudentMaster 
	on tbl_StudentDetail.Student_Id = tbl_StudentMaster.Student_Id
group by Student_Name
Order by Student_Name desc