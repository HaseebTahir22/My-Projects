USE SAMPLEDB
GO
------1-----
---- Select first name and last name from employees:
SELECT *
FROM hcm.employees;

SELECT first_name, last_name
FROM hcm.employees;

------2----
-----Select last_name and city of all customers
----Alias the last_name to customer_last name in the query

SELECT last_name AS customer_last_name, city
FROM oes.customers;

----3-----
----Select all columns from oes.order_items table:

SELECT *
FROM oes.order_items;