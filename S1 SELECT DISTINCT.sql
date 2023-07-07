USE SAMPLEDB
GO

SELECT *
FROM bird.antarctic_populations;

SELECT DISTINCT locality
FROM bird.antarctic_populations;

SELECT DISTINCT locality,species_id
FROM bird.antarctic_populations;
