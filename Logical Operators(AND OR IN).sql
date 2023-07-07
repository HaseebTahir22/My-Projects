USE SAMPLEDB
GO

----1----
-----Select employees from seattle or sydney:

SELECT *
FROM hcm.employees
WHERE city= 'seattle' OR city= 'sydney';

-----2----
-----Select employees who live in any of the following city
-----Seattle,Sydney,Ascot,Hillston:

SELECT *
FROM hcm.employees
WHERE city IN('Seattle', 'Sydney', 'Ascot', 'Hillston');

------3-----
------Select employees from Sydney who have a salary greater than $200,000;

SELECT *
FROM hcm.employees
WHERE city= 'Sydney' AND salary > 200000;

-------4----
-------Select employees who live in either seatle or sydney city and were hired
-------on or after January 1st 2019:

SELECT *
FROM hcm.employees
WHERE (city= 'Seattle' OR city= 'Sydney') AND hire_date >= '20190101';

-----5-----
----Select products that are not categories 1,2 or 5:

SELECT *
FROM oes.products
WHERE category_id NOT IN (1,2,5);

----or--

SELECT *
FROM oes.products
WHERE category_id != 1 AND category_id != 2 AND category_id != 5;
