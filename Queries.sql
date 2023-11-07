-- SELECT * FROM CARS WHERE BRAND = 'FORD';
-- SELECT * FROM CARS WHERE BRAND <> 'FORD';
-- SELECT * FROM CARS WHERE BRAND != 'FORD';

 --LIKE IS CASE SENSITVE ------
-- SELECT * FROM CARS WHERE BRAND LIKE 'F%';
-- SELECT * FROM CARS WHERE MODEL LIKE 'J%'; 

-- ILIKE IS CASE INSENSITIVE -------
-- SELECT * FROM CARS WHERE MODEL ILIKE 'j%';

-- IN
-- The IN operator is used when a column's value matches any of the values in a list:

-- SELECT * FROM CARS 
-- WHERE BRAND IN ('M3','FORD');


-- SELECT * FROM CARS 
-- WHERE BRAND NOT IN ('M3','FORD');

-- BETWEEN
-- The BETWEEN operator is used to check if a column's value is between a specified range of values:


--   FOR CHANGING THE COLUMN YEAR1 VALUE TO INT FROM VARCHAR
-- alter table cars 
-- ALTER COLUMN YEAR1 TYPE INT USING YEAR1::INTEGER;

-- SELECT * FROM CARS 
-- WHERE YEAR1 BETWEEN 1965 AND 1967;







