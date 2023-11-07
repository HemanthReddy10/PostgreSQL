-- -- JOIN
-- -- A JOIN clause is used to combine rows from two or more tables, based on a related column between them.

-- SELECT product_id, product_name, category_name
-- FROM products
-- INNER JOIN categories ON products.category_id = categories.category_id;


-- -- Different Types of Joins
-- -- Here are the different types of the Joins in PostgreSQL:

-- -- INNER JOIN: Returns records that have matching values in both tables
-- -- LEFT JOIN: Returns all records from the left table, and the matched records from the right table
-- -- RIGHT JOIN: Returns all records from the right table, and the matched records from the left table
-- -- FULL JOIN: Returns all records when there is a match in either left or right table

-- SELECT testproduct_id, product_name, category_name
-- FROM testproducts
-- INNER JOIN categories ON testproducts.category_id = categories.category_id;

-- SELECT testproduct_id, product_name, category_name
-- FROM testproducts
-- LEFT JOIN categories ON testproducts.category_id = categories.category_id;

-- SELECT testproduct_id, product_name, category_name
-- FROM testproducts
-- RIGHT JOIN categories ON testproducts.category_id = categories.category_id;

-- SELECT testproduct_id, product_name, category_name
-- FROM testproducts
-- FULL JOIN categories ON testproducts.category_id = categories.category_id;

-- The CROSS JOIN method will return ALL categories for EACH testproduct, meaning that it will return 80 rows (10 * 8).

-- SELECT testproduct_id, product_name, category_name
-- FROM testproducts
-- CROSS JOIN categories;


-- UNION:
-- The UNION operator is used to combine the result-set of two or more queries.

-- The queries in the union must follow these rules:

-- They must have the same number of columns
-- The columns must have the same data types
-- The columns must be in the same order

-- SELECT product_id, product_name
-- FROM products
-- UNION
-- SELECT testproduct_id, product_name
-- FROM testproducts
-- ORDER BY product_id;

-- GROUP BY
-- The GROUP BY clause groups rows that have the same values into summary rows, like "find the number of customers in each country".
-- The GROUP BY clause is often used with aggregate functions like COUNT(), MAX(), MIN(), SUM(), AVG() to group the result-set by one or more columns.

-- SELECT customers.customer_name, COUNT(orders.order_id)
-- FROM orders
-- LEFT JOIN customers ON orders.customer_id = customers.customer_id
-- GROUP BY customer_name;
  
  
--  HAVING
-- The HAVING clause was added to SQL because the WHERE clause cannot be used with aggregate functions.

-- SELECT COUNT(customer_id), country
-- FROM customers
-- GROUP BY country
-- HAVING COUNT(customer_id) > 5;

-- SELECT order_details.order_id, SUM(products.price)
-- FROM order_details
-- LEFT JOIN products ON order_details.product_id = products.product_id
-- GROUP BY order_id
-- HAVING SUM(products.price) > 400.00;

-- EXISTS
-- The EXISTS operator is used to test for the existence of any record in a sub query.

-- The EXISTS operator returns TRUE if the sub query returns one or more records.

-- SELECT customers.customer_name
-- FROM customers
-- WHERE EXISTS (
--   SELECT order_id
--   FROM orders
--   WHERE customer_id = customers.customer_id
-- );

-- ANY
-- The ANY operator allows you to perform a comparison between a single column value and a range of other values.

-- The ANY operator:

-- returns a Boolean value as a result
-- returns TRUE if ANY of the sub query values meet the condition

-- SELECT product_name
-- FROM products
-- WHERE product_id = ANY (
--   SELECT product_id
--   FROM order_details
--   WHERE quantity > 120
-- );

-- The CASE expression goes through conditions and returns a value when the first condition is met (like an if-then-else statement).

-- Once a condition is true, it will stop reading and return the result. If no conditions are true, it returns the value in the ELSE clause.

-- If there is no ELSE part and no conditions are true, it returns NULL.

SELECT product_name  pn,
CASE 
  WHEN price < 10 THEN 'Low price product'
  WHEN price > 50 THEN 'High price product'
ELSE
  'Normal product'
END as Product_type
FROM products;


















