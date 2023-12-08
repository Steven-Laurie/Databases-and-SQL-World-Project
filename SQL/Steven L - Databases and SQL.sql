USE world;

#Task 3
SELECT COUNT(*) AS 'Cities in USA' FROM city 
Where Countrycode = 'USA';

#Task 4
SELECT Name AS 'Country', Population AS 'Population', LifeExpectancy AS 'Life Expectancy'
FROM country
WHERE Name = 'Argentina';

#Task 5
SELECT Name AS 'Country', LifeExpectancy AS 'Life Expectancy'
FROM country
ORDER BY LifeExpectancy DESC
LIMIT 1;

#Task 6
SELECT * FROM city
WHERE Name LIKE 'F%'
LIMIT 25;

#Task 7
SELECT ID, Name, Population
FROM city
LIMIT 10;  

#Task 8
SELECT Name AS 'City', Population AS 'Population' FROM city
WHERE Population > 2000000;

#Task 9
SELECT * FROM city
WHERE Name LIKE 'Be%';

#Task 10
SELECT Name as 'City', Population as 'Population' FROM city
WHERE Population BETWEEN 500000 AND 1000000;

#Task 11
SELECT Name AS 'City', MIN(Population) AS 'Lowest Population' 
FROM city
GROUP BY Name, Population
ORDER BY Population 
LIMIT 1;

#Task 12
SELECT CountryCode, Name, Population, Language
FROM countrylanguage
INNER JOIN country
WHERE CountryCode = 'CHE' AND Name = 'Switzerland';
