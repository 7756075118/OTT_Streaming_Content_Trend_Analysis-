show databases;

USE ott_content_analysis;

-- 1. Movies vs TV Shows
SELECT type, COUNT(*) AS total_titles
FROM ott_titles
GROUP BY type
ORDER BY total_titles DESC;

-- 2. Top 10 genres
SELECT listed_in, COUNT(*) AS total_titles
FROM ott_titles
WHERE listed_in IS NOT NULL
GROUP BY listed_in
ORDER BY total_titles DESC
LIMIT 10;

-- 3. Content by release year
SELECT release_year, COUNT(*) AS total_titles
FROM ott_titles
WHERE release_year IS NOT NULL
GROUP BY release_year
ORDER BY release_year DESC;

-- 4. Content ratings
SELECT rating, COUNT(*) AS total_titles
FROM ott_titles
WHERE rating IS NOT NULL
GROUP BY rating
ORDER BY total_titles DESC;

-- 5. Content by country
SELECT country, COUNT(*) AS total_titles
FROM ott_titles
WHERE country IS NOT NULL
GROUP BY country
ORDER BY total_titles DESC
LIMIT 10;

-- 6. Movie vs TV Show release year
SELECT type, release_year, COUNT(*) AS total_titles
FROM ott_titles
WHERE release_year IS NOT NULL
GROUP BY type, release_year
ORDER BY release_year, type;

-- 7. Titles added by year
SELECT YEAR(STR_TO_DATE(date_added, '%M %d, %Y')) AS year_added,
       COUNT(*) AS total_titles
FROM ott_titles
WHERE date_added IS NOT NULL
GROUP BY year_added
ORDER BY year_added;