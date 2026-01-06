-- Identify outage week
SELECT *
FROM nflx_top_10
WHERE weekly_hours_viewed = 0;

-- Titles with missing IMDb ratings
SELECT *
FROM imdb_ratings
WHERE rating = 0;
