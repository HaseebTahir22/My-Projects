USE SAMPLEDB
GO
SELECT *
FROM oes.customers
SELECT *
FROM hcm.employees;

-----using Exists Operator

SELECT first_name
FROM oes.customers o
WHERE EXISTS(
             SELECT first_name
			 FROM hcm.employees e
			 WHERE o.first_name = e.first_name
			 );
