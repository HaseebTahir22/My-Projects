USE SAMPLEDB
GO

----1-----
----Write a query to return the following attributes for employees who belong to a department:

SELECT
e.employee_id,
e.first_name,
e.last_name,
e.salary,
d.department_name
FROM hcm.employees e INNER JOIN hcm.departments d
ON d.department_id = e.department_id;

------2----
------Return employee details for all employees,
-------including employees who do not belong to department:

SELECT
e.employee_id,
e.first_name,
e.last_name,
e.salary,
d.department_name
FROM hcm.employees e LEFT OUTER JOIN hcm.departments d
ON d.department_id = e.department_id;

-----3----
-------Return the total number of employees in each department 
-----Include the department name in the query result.
------Also include employees who have not been assigned to a department:

SELECT
    d.department_name,
	COUNT(*) AS employee_count
	FROM hcm.employees e LEFT OUTER JOIN hcm.departments d
	ON d.department_id = e.department_id
	GROUP BY d.department_name;