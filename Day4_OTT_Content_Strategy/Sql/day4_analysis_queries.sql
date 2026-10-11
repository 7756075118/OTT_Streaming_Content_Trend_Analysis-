show databases;

use ott_streaming_analysis;

-- Query 1 — Movies vs. TV shows
SELECT
    type,
    COUNT(*) AS total_titles
FROM netflix_titles
GROUP BY type
ORDER BY total_titles DESC;

-- Query 2 — Top 10 primary genres
SELECT
    TRIM(SUBSTRING_INDEX(listed_in, ',', 1)) AS primary_genre,
    COUNT(*) AS total_titles
FROM netflix_titles
WHERE listed_in IS NOT NULL
  AND TRIM(listed_in) <> ''
GROUP BY primary_genre
ORDER BY total_titles DESC
LIMIT 10;

-- Query 3 — Release trends by year
SELECT
    release_year,
    type,
    COUNT(*) AS total_titles
FROM netflix_titles
WHERE release_year IS NOT NULL
GROUP BY release_year, type
ORDER BY release_year, type; 

-- Query 4 — Content ratings
SELECT
    rating,
    COUNT(*) AS total_titles
FROM netflix_titles
WHERE rating IS NOT NULL
GROUP BY rating
ORDER BY total_titles DESC;

-- Query 5 — Primary country distribution
SELECT
    TRIM(SUBSTRING_INDEX(country, ',', 1)) AS primary_country,
    COUNT(*) AS total_titles
FROM netflix_titles
WHERE country IS NOT NULL
  AND TRIM(country) <> ''
GROUP BY primary_country
ORDER BY total_titles DESC
LIMIT 10;

-- Query 6 — Average and median movie duration
SELECT
    AVG(
        CAST(
            SUBSTRING_INDEX(duration, ' ', 1)
            AS UNSIGNED
        )
    ) AS average_movie_minutes
FROM netflix_titles
WHERE type = 'Movie'
  AND duration REGEXP '^[0-9]+ min$';
  
-- Query 7 — TV shows by number of seasons
SELECT
    CAST(SUBSTRING_INDEX(duration, ' ', 1) AS UNSIGNED)
        AS seasons,
    COUNT(*) AS total_shows
FROM netflix_titles
WHERE type = 'TV Show'
  AND duration REGEXP '^[0-9]+ Season'
GROUP BY seasons
ORDER BY seasons;

