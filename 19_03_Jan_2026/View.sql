View :
	View is use to create temporary table.
	Once table is created it will store that table in memory and not 
		getting deleted until and until user delete it.
	When we have repeated code in SP. so to reduce that duplicate code we
		need to create view.

	-- Syntax :
		Create view vw_name as
		Select column_name,column_name,...,column_nameN from tbl_name


	-- Example :
		Create view vw_Employee as
		Select * from tbl_EmployeeMaster

		Select * from vw_Employee

		Select * from tbl_CategoryMaster
		Select * from tbl_SubcategoryMaster
		Select * from tbl_OrderMaster

		Insert into tbl_SubcategoryMaster(Category_Id,Subcategory_Name,Subcategory_Stock,Subcategory_Price)
		values(10,'Panasonic',2,28000)

		Alter view vw_CategoryAndSubcategory as
		Select Cm.category_Name,scm.Subcategory_Name,scm.Subcategory_Price,
			scm.Subcategory_Stock, scm.Subcategory_Id
		from tbl_CategoryMaster CM
		Inner join tbl_SubcategoryMaster SCM on
			CM.Category_Id = SCM.category_Id

		Select * from vw_CategoryAndSubcategory

		Select * from tbl_OrderMaster om
		Inner join vw_CategoryAndSubcategory vw on
			om.Subcategory_Id = vw.Subcategory_Id

	-- Delete View :
		Delete view from DB

		-- Syntax :
			drop view vw_name

		-- Example :
			Drop view vw_CategoryAndSubcategory