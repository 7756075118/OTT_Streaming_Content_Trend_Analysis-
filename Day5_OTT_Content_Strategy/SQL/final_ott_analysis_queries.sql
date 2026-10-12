use ott_streaming_analysis;

-- 1. Total number of titles
SELECT COUNT(*) AS total_titles
FROM netflix_titles;

-- 2. Movies vs TV Shows
SELECT type, COUNT(*) AS total_titles
FROM netflix_titles
GROUP BY type
ORDER BY total_titles DESC;

-- 3. Content ratings
SELECT rating, COUNT(*) AS total_titles
FROM netflix_titles
GROUP BY rating
ORDER BY total_titles DESC;

-- 4. Titles by release year
SELECT release_year, COUNT(*) AS total_titles
FROM netflix_titles
WHERE release_year IS NOT NULL
GROUP BY release_year
ORDER BY release_year DESC;

-- 5. Top countries
SELECT
    TRIM(SUBSTRING_INDEX(country, ',', 1)) AS primary_country,
    COUNT(*) AS total_titles
FROM netflix_titles
WHERE country IS NOT NULL
  AND TRIM(country) <> ''
GROUP BY primary_country
ORDER BY total_titles DESC
LIMIT 10;

-- 6. Titles added per year
SELECT
    YEAR(STR_TO_DATE(date_added, '%M %d, %Y')) AS added_year,
    COUNT(*) AS titles_added
FROM netflix_titles
WHERE date_added IS NOT NULL
GROUP BY added_year
ORDER BY added_year;
