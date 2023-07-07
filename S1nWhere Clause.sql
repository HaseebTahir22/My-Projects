USE SAMPLEDB
GO
-- Challenge 1
-- Select all products which have a price greater than 100$:

SELECT *
FROM oes.products

SELECT *
FROM oes.products
WHERE list_price>100

-- Challenge 2
-- Select all unshipped orders(i.e where shipped date is null):

SELECT *
FROM oes.orders

SELECT *
FROM oes.orders
WHERE shipped_date IS NULL

-- Challenge 3
-- Select all orders placed on 26th February 2020:

SELECT *
FROM oes.orders
WHERE order_date = '20200226'

-- Challenge 4
-- Select all orders placed on or after the 1st January 2020:

SELECT *
FROM oes.orders
WHERE order_date >= '20200101'