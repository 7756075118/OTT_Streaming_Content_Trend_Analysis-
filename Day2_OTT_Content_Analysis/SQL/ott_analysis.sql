CREATE DATABASE ott_content_analysis;

USE ott_content_analysis;

SELECT COUNT(*) AS total_titles
FROM ott_titles;

-- Query 1: count numbers of movies and TV Shows
SELECT
    type,
    COUNT(*) AS total_titles
FROM ott_titles
GROUP BY type
ORDER BY total_titles DESC;

SELECT *
FROM ott_titles
LIMIT 10;

-- Query 2: Release-year trend
SELECT
    release_year,
    COUNT(*) AS total_titles
FROM ott_titles
WHERE release_year IS NOT NULL
GROUP BY release_year
ORDER BY release_year;

-- Query 3: top 10 release_year
SELECT
    release_year,
    COUNT(*) AS total_titles
FROM ott_titles
WHERE release_year IS NOT NULL
GROUP BY release_year
ORDER BY total_titles DESC
LIMIT 10;

-- Query 4: Rating distribution
SELECT
    rating,
    COUNT(*) AS total_titles
FROM ott_titles
GROUP BY rating
ORDER BY total_titles DESC;

-- Query 5: Top 10 countries
SELECT
    country,
    COUNT(*) AS total_titles
FROM ott_titles
WHERE country IS NOT NULL
GROUP BY country
ORDER BY total_titles DESC
LIMIT 10;

-- Query 6: Top 10 genres
WITH RECURSIVE genre_split AS (
    SELECT
        title,
        TRIM(SUBSTRING_INDEX(listed_in, ',', 1)) AS genre,
        CASE
            WHEN listed_in LIKE '%,%'
            THEN SUBSTRING(listed_in,
                           LENGTH(SUBSTRING_INDEX(listed_in, ',', 1)) + 2)
            ELSE ''
        END AS remaining
    FROM ott_titles
    WHERE listed_in IS NOT NULL
      AND listed_in <> ''

    UNION ALL

    SELECT
        title,
        TRIM(SUBSTRING_INDEX(remaining, ',', 1)),
        CASE
            WHEN remaining LIKE '%,%'
            THEN SUBSTRING(remaining,
                           LENGTH(SUBSTRING_INDEX(remaining, ',', 1)) + 2)
            ELSE ''
        END
    FROM genre_split
    WHERE remaining <> ''
)
SELECT
    genre,
    COUNT(DISTINCT title) AS total_titles
FROM genre_split
WHERE genre <> ''
GROUP BY genre
ORDER BY total_titles DESC
LIMIT 10;