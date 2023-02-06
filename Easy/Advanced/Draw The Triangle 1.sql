-- P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):

SET @i = 20 + 1;
SELECT REPEAT('* ', @i := @i -1) 
FROM INFORMATION_SCHEMA.TABLES;