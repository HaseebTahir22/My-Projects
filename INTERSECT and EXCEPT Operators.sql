USE SAMPLEDB
GO

SELECT *
FROM hcm.departments;

SELECT *
FROM hcm.employees;

SELECT department_id
FROM hcm.departments
INTERSECT
SELECT department_id
FROM hcm.employees;

SELECT department_id
FROM hcm.departments
EXCEPT
SELECT department_id
FROM hcm.employees;