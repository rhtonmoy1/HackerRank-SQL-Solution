-- Given the CITY and COUNTRY tables, query the sum of the populations of all cities 
-- where the CONTINENT is 'Asia'.

-- Note: CITY.CountryCode and COUNTRY.Code are matching key columns

SELECT SUM(ct.POPULATION)
FROM CITY AS ct JOIN COUNTRY AS c
ON ct.COUNTRYCODE = c.CODE
WHERE CONTINENT ='Asia'