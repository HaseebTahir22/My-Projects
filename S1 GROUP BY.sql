USE SAMPLEDB
GO

------1----
SELECT *
FROM hcm.employees;
-----How many employees are there in each department?

SELECT department_id, COUNT(*) AS employee_count
FROM hcm.employees
GROUP BY department_id;

------2-------
-------What is the average salary in each department?
-------Order by average salary from highest to lowest:

SELECT department_id, AVG(salary) AS avg_salary
FROM hcm.employees
GROUP BY department_id
ORDER BY avg_salary desc;

-----3-------
SELECT *
FROM oes.inventories;
------Give the total number of products on hand at each warehouse
-----Limit the result to only warehouse which have greater than 5000 product items on hand:

SELECT warehouse_id, SUM(quantity_on_hand) AS total_products_on_hand
FROM oes.inventories
GROUP BY warehouse_id
HAVING SUM(quantity_on_hand) > 5000;

------4----
SELECT *
FROM bird.antarctic_populations;

-----What is the date for most recent population count for each locality
-----in the bird.antarctic_populations table?

SELECT locality,
MAX(date_of_count) AS date_of_recent_pop_count
FROM bird.antarctic_populations
GROUP BY locality;

------5-----
------What is the date of the most recent population count for each species
-----at each locality in the bird.antarctic_populations table?

SELECT 
    locality,
    species_id,
    MAX(date_of_count) AS date_of_recent_pop_count
FROM bird.antarctic_populations
GROUP BY locality,species_id;
