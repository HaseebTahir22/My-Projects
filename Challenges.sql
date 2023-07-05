USE SAMPLEDB
GO
-- Challenge 1
-- Write a query that returns employees ordered alphabetically by their last name:
-- From AtoZ:
SELECT *
FROM hcm.employees
ORDER BY last_name ASC;
-- Challenge 2
-- Write a query that returns employees ordered by salary from highest to lowest:
SELECT *
FROM hcm.employees
ORDER BY salary DESC;
-- Challenge 3
-- Write a query that returns employees ordered by most recently hired to longest serving:
SELECT *
FROM hcm.employees
ORDER BY hire_date DESC;
-- Challenge 4
-- Return employees ordered by department_id in ascending order
-- and within each department_id order by salary from highest to lowest:
SELECT *
FROM hcm.employees
ORDER BY department_id ASC, salary DESC;
-- Challenge 5
-- Return the employee ids, names and salaries for the top 10 employees
-- who get paid the most:
SELECT TOP(10) employee_id, first_name, last_name,salary
FROM hcm.employees
ORDER BY salary DESC;
-- Challenge 6
-- Return the employee ids, names and salaries for the employee or employees
-- who get paid the least:
SELECT TOP(1) WITH TIES employee_id, first_name,last_name,salary
FROM hcm.employees
ORDER BY salary ASC;