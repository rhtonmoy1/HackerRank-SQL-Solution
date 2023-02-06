-- Given the CITY and COUNTRY tables, query the names of all the continents 
-- (COUNTRY.Continent) and their respective average city populations (CITY.Population) rounded down 
-- to the nearest integer.

-- Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

SELECT c.CONTINENT, FLOOR(AVG(ct.POPULATION))
FROM CITY AS ct JOIN COUNTRY AS c
ON ct.COUNTRYCODE = c.CODE
GROUP BY c.CONTINENT