-----------------------------------------------------PostgreSQL Quick Notes-----------------------------------------------------------------------
-- INSERT INTO THE TABLE:

-- INSERT INTO CARS(BRAND,MODEL,YEAR1)
-- VALUES('FORD','MUSTANG',1964);

-- INSERT INTO CARS(BRAND,MODEL,YEAR1)
-- VALUES('FORD1','MUSTANG1',1965);

-- INSERT INTO CARS(BRAND,MODEL,YEAR1)
-- VALUES('FORD2','MUSTANG2',1966);

--  INSERT INTO CARS(BRAND,MODEL,YEAR1)
--  VALUES('FORD3','MUSTANG3',1967),
--        ('FORD4','MUSTANG4',1968),
-- 	   ('FORD5','MUSTANG5',1969);

--------------------------------------------------------------------------------------------------------------------------------------------------

-- ALTER TABLE : The ALTER TABLE statement is used to add, delete, or modify columns in an existing table.
--The ALTER TABLE statement is also used to add and drop various constraints on an existing table.

-- ALTER TABLE CARS 
-- ADD COLOR VARCHAR(255)
 
--  ALTER TABLE CARS
--  ALTER COLUMN YEAR1 TYPE VARCHAR(4);

-- ALTER TABLE CARS
-- DROP COLUMN COLOR;



--------------------------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------------------------------------

-- UPDATE: The UPDATE statement is used to modify the value(s) in existing records in a table.

-- UPDATE CARS
-- SET COLOR='RED'
-- WHERE BRAND='FORD';

-- UPDATE CARS
-- SET COLOR='ORANGE';

--------------------------------------------------------------------------------------------------------------------------------------------------
-- DELETE : The DELETE statement is used to delete existing records in a table.

-- DELETE FROM CARS
-- WHERE BRAND='FORD4';

-- Delete All Records
-- It is possible to delete all rows in a table without deleting the table. This means that the table structure, attributes, and indexes will be intact.

-- TRUNCATE TABLE: 
--  TRUNCATE TABLE CARS



-- The DROP TABLE Statement
-- The DROP TABLE statement is used to drop an existing table in a database.

-- DROP TABLE CARS


-- IF WE USE DELETE ALL IT WILL JUST DELETE THE CONTENTS IN THE TABLE BUT NOT THE STRUCTURE OF THE TABLE
-- BUT IF WE USE DROP TABLE IT WILL DELETE EVERYTHING INCLUDING THE STRUCTURE .

-- DROP command in SQL removes the table form the database, 
-- DELETE command removes one or more records from the table, 
-- and TRUNCATE command removes all the rows from the existing table.

--------------------------------------------------------------------------------------------------------------------------------------------------



--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------

SELECT * FROM CARS;