USE SAMPLEDB
GO
-----1----
-----Select all countries which start with the letter 'N':
SELECT *
FROM hcm.countries;

SELECT *
FROM hcm.countries
WHERE country_name LIKE 'N%'

---2----
----Select all customers who have gmail email addresses:
SELECT 
customer_id,
first_name,
last_name,
email
FROM oes.customers
WHERE email LIKE '%@gmail.com'

------3-----
-------Select all product names which contain word 'mouse':
SELECT product_name
FROM oes.products
WHERE product_name LIKE '%mouse%'

----4-----
-----Select all product names which end in a number:
SELECT product_name
FROM oes.products
WHERE product_name LIKE '%[0-9]'