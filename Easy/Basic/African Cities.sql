-- Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.

-- Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

SELECT ct.NAME
FROM CITY AS ct JOIN COUNTRY AS c
ON ct.COUNTRYCODE = c.CODE
WHERE CONTINENT = 'Africa'