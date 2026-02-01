-- Enable readable output format
.mode columns
.headers on

-- Instructions for students:
-- 1. Open SQLite in terminal: sqlite3 countries.db
-- 2. Load this script: .read tasks.sql
-- 3. Exit SQLite: .exit

--1.SELECT Continent, AVG(Population) FROM countries GROUP BY Continent;
--2.SELECT Continent, SUM(Population) FROM countries GROUP BY Continent; 
--3.SELECT Country, MAX(Population) FROM countries GROUP BY Continent; 
--4.SELECT Country, MIN(AreaSqMi) FROM countries GROUP BY Continent;
--5.SELECT Continent, COUNT(*) FROM countries GROUP BY Continent;
--6.SELECT Continent, AVG(GDPPerCapita) FROM countries GROUP BY Continent ORDER BY AVG(GDPPerCapita) DESC;
--7.SELECT Country, Population FROM countries ORDER BY Population DESC LIMIT 5;
--8.SELECT Country, InfantMortalityPer1000 FROM countries ORDER BY InfantMortalityPer1000 LIMIT 5;
--9.SELECT Continent, AVG(LiteracyPercent) FROM countries GROUP BY Continent ORDER BY AVG(LiteracyPercent);
--10.SELECT Continent, SUM(Population) FROM countries GROUP BY Continent ORDER BY SUM(Population) DESC LIMIT 3;
--11.SELECT Continent, AVG(Population) FROM countries WHERE Population > 10000000 GROUP BY Continent;
--12.SELECT Continent, AVG(GDPPerCapita) FROM countries WHERE LiteracyPercent > 80 GROUP BY Continent;
--13.SELECT Continent, Country, MAX(Birthrate) FROM countries WHERE InfantMortalityPer1000 < 30 GROUP BY Continent;  
--14.SELECT Continent, AVG(GDPPerCapita) FROM countries WHERE LiteracyPercent > 80 GROUP BY Continent HAVING AVG(GDPPerCapita) > 10000 ORDER BY AVG(GDPPerCapita) DESC;
SELECT Continent, SUM(Population) FROM countries WHERE  Birthrate < 20 GROUP BY Continent HAVING SUM(Population) > 500000000 ORDER BY SUM(Population) DESC LIMIT 3;