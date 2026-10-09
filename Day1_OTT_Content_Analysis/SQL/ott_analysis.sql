CREATE DATABASE ott_streaming_analysis;

USE ott_streaming_analysis;

CREATE TABLE netflix_titles (
    show_id VARCHAR(20),
    type VARCHAR(20),
    title VARCHAR(500),
    director TEXT,
    cast TEXT,
    country TEXT,
    date_added VARCHAR(50),
    release_year INT,
    rating VARCHAR(20),
    duration VARCHAR(50),
    listed_in TEXT,
    description TEXT
);

DESCRIBE netflix_titles;

SELECT COUNT(*) AS total_records
FROM netflix_titles;

SELECT *
FROM netflix_titles
LIMIT 10;

-- Query 1 — Total content
SELECT COUNT(*) AS total_titles
FROM netflix_titles;

-- Query 2 — Movies vs TV Shows
SELECT
    type,
    COUNT(*) AS total_titles
FROM netflix_titles
GROUP BY type
ORDER BY total_titles DESC;

-- Query 3 — Content by release year
SELECT
    release_year,
    COUNT(*) AS total_titles
FROM netflix_titles
GROUP BY release_year
ORDER BY release_year;

-- Query 4 — Content added by year
SELECT
    YEAR(STR_TO_DATE(date_added, '%M %d, %Y')) AS added_year,
    COUNT(*) AS total_titles
FROM netflix_titles
WHERE date_added IS NOT NULL
GROUP BY added_year
ORDER BY added_year;

-- Query 5 — Content ratings
SELECT
    rating,
    COUNT(*) AS total_titles
FROM netflix_titles
WHERE rating IS NOT NULL
GROUP BY rating
ORDER BY total_titles DESC;

-- Query 6 — Movies vs TV Shows by release year
SELECT
    release_year,
    type,
    COUNT(*) AS total_titles
FROM netflix_titles
GROUP BY release_year, type
ORDER BY release_year, type;

-- Query 7 — Indian content
SELECT
    type,
    COUNT(*) AS total_titles
FROM netflix_titles
WHERE country LIKE '%India%'
GROUP BY type;

-- Query 8 — Recent content
SELECT
    type,
    COUNT(*) AS total_titles
FROM netflix_titles
WHERE release_year >= 2015
GROUP BY type
ORDER BY total_titles DESC;