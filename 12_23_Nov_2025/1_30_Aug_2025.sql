Database :
	Database is use to store data.
	Under DB, we can create multiple tables, Store Procedures, Views,
		Function etc.
	Db name should not start with special char
	Db name should not start with numbers
	Space is not allowed in the DB name.

	-- Syntax :
		Create database database_name

	-- Example :
		Create database School_DB

	-- Rename existing database :
		Rename existing database.

		-- Syntax :
			Alter database old_dbname
			modify name = new_databasename
		
		-- Example :

			-- I chnage the datbase name because of spelling mistake
			-- Alter database School_Database
			-- modify name = Schoold_Database

			Alter database School_Database
			modify name = School_DB

		-- Delete database :
			Delete existing database.
			Once database is got delted we can not restore it back.

			-- Syntax :
				Drop database database_name

			-- Example :
				Drop database School_DB

		-- Switch from one DB to another DB
			When we want to switch from one db to another db
				
			-- Syntax :
				Use database_name

			-- Example :
				Use School_DB