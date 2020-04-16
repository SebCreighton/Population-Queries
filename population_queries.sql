
-- This is the first query:
SELECT DISTINCT year from population_years;


-- Populations of Gabon:
SELECT MAX(population) from population_years WHERE country ="Gabon";

-- Smallest 2005 countries by population:
SELECT population, country from population_years
WHERE year="2005"
ORDER BY population ASC
LIMIT 10;

-- Countries with >100M population in 2010
SELECT DISTINCT country from population_years
WHERE year = "2010"
AND population > 100;

-- Countries containing "islands"
SELECT COUNT(DISTINCT country) FROM population_years
WHERE country LIKE "%Islands%";

-- Difference in population in Indonesia 2000 and 2010:
SELECT population FROM population_years
WHERE (year = "2000" OR year = "2010") AND  country = "Indonesia";
