-- The SELECT DISTINCT statement is used to return only distinct (different) values.
-- select distinct country from customers;

-- SELECT COUNT(DISTINCT)
-- We can also use the DISTINCT keyword in combination with the COUNT statement
-- select count(distinct(country)) from customers;

-- WHERE class is used to filter the records
-- select * from customers 
-- where city='London';

-- Sort Data
-- The ORDER BY keyword is used to sort the result in ascending or descending order.
-- select * from products order by price desc;

-- The LIMIT Clause
-- The LIMIT clause is used to limit the maximum number of records to return.
-- select * from customers 
-- limit 20;

-- The OFFSET Clause
-- The OFFSET clause is used to specify where to start selecting the records to return.
-- select * from customers
-- limit 20 offset 40;

-- With 2 Decimals
-- The above example returned the average price of all products, the result was 28.8663636363636364.
-- We can use the ::NUMERIC operator to round the average price to a number with 2 decimals:

-- select avg(price)::numeric(10,2) as average from products;

-- LIKE
-- The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.

-- There are two wildcards often used in conjunction with the LIKE operator:
-- % The percent sign represents zero, one, or multiple characters
-- _ The underscore sign represents one, single character

-- Customer name that starts with A
-- select * from customers
-- where customer_name like 'A%';         

-- Customer name that ends with en
-- select * from customers
-- where customer_name like '%en';  

-- -- Customer name that contains the letter 'A'
-- select * from customers
-- where customer_name like '%A%'; 

-- -- Customer name that contains the letter 'A'
-- select * from customers
-- where city like 'L_nd__'; 


-- -- Concatenate Columns
-- -- The AS keyword is often used when two or more fields are concatenated into one.

-- -- To concatenate two fields use ||.
-- SELECT product_name || unit AS product
-- FROM products;


