USE SAMPLEDB
GO
SELECT *
FROM oes.products ;
SELECT *
FROM oes.product_categories;

SELECT *
FROM oes.products p Full OUTER JOIN oes.product_categories pc
ON p.category_id = pc.category_id;

SELECT *
FROM oes.products p  CROSS JOIN oes.product_categories pc;