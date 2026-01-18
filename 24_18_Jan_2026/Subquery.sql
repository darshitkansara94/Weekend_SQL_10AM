Subquery :
	Subquery is, we write a query inside query.
	When we need to do some calculation or need to fetch data that is exists
		or not.
	Subquery is use with the where clause.
	We can not access the column of subquery into main query. 

	-- Syntax :
		Select * from tbl_name
		where column_name in (Select column_name from tbl_name2)

	-- Example :
		Select * from tbl_CategoryMaster
		Select * from tbl_SubcategoryMaster

		Select * from tbl_CategoryMaster
		Where Category_Id in (Select Category_Id from tbl_SubcategoryMaster)

