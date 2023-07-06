USE SAMPLEDB
GO
-----1----
SELECT *
FROM hcm.countries;

SELECT *
FROM hcm.countries
WHERE country_name LIKE 'N%'

---2----
SELECT 
customer_id,
first_name,
last_name,
email
FROM oes.customers

------3-----
SELECT product_name
FROM oes.products
WHERE product_name LIKE '%mouse%'

----4-----
SELECT product_name
FROM oes.products
WHERE product_name LIKE '%[0-9]'
WHERE email LIKE '%@gmail.com'