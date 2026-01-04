Index :
	To improve performance of select statement we will use index.
	But creating multiple index can slow down the Insert, Update and Delete
		operation.

	-- Types of Index :
		Clustered Index:
			We can create only one clustere index per table.
			by default this index is created with the PK.

			-- Syntax :
				Create clustered index idx_name on
				tbl_name(column_name)

			-- Example :
				Create clustered index idx_CategoryId on
				tbl_categoryMaster(Category_Id)

		NonClustered Index :
			We can create multiple index on single table.
			But creating multiple index can slow down insert, update and
				delete operation.

			-- Syntax :
				Create nonclustered index idx_name on
				tbl_name(column_name)

				-- For multiple columns
				Create nonclustered index idx_name on
				tbl_name(column_name,column_name,..,column_name)

			-- Example :
				Create nonclustered index idx_EmployeeName on
				tbl_EmployeeMaster(Employee_Name)

			unique index : 
				It is gurantee that the data we are saving is unique for the
					column.
				When we want to make sure or we need to save unique data 
					for the column.

				-- Syntax :
					Create unique nonclustered index idx_name on
					tbl_name(column_name)

				-- Example :
					Create unique nonclustered index idx_UniqueCategory on
					tbl_CategoryMaster(Category_Name)

					Insert into tbl_CategoryMaster(category_Name)
					values('mobile1')

					Select * from tbl_CategoryMaster
					Select * from tbl_SubcategoryMaster

					-- update tbl_SubcategoryMaster set Category_Id = 8 where Subcategory_Id = 4

					With cte_name as
					(
						Select ROW_NUMBER() over(partition by Category_name  order by Category_Id) as Srno,
						category_Name
						from tbl_CategoryMaster
					)

					delete from cte_name where srno >=2

			Filtered index :
				When we need to add custom condition for the column.
				We need to use where clause to add condition with the index.

				-- Syntax :
					Create unique nonclustered index idx_name on
					tbl_name(column_name)
					Where condition

				-- Example :
					Create unique nonclustered index idx_Emp_NameIsActive on
					tbl_EmployeeMaster(Employee_Name)
					Where Is_Active = 0

					Select * from tbl_EmployeeMaster where Is_Active = 0

					-- Drop index idx_Emp_NameIsActive on tbl_EmployeeMaster

					Select * from tbl_EmployeeMaster

					--Update tbl_EmployeeMaster set Is_Active = 1 where Employee_Id = 2

					Insert into tbl_EmployeeMaster(Employee_Name,Employee_Salary,Is_Active)
					values('dev','25000',0)

					--With cte_name as
					--(
					--	Select ROW_NUMBER() over(partition by Employee_name  order by Employee_Id) as Srno,
					--	Employee_name
					--	from tbl_EmployeeMaster
					--)

					--delete from cte_name where srno >=2





	-- Delete Index :
		Delete existing index from table

		-- Syntax :
			Drop index idx_name on tbl_name

		-- Example :
			Drop index PK__tbl_Cate__6DB38D6ECC3A63C8
			on tbl_CategoryMaster
			