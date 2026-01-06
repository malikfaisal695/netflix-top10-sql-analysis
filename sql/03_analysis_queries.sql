-- Most recent week
SELECT MAX(week_date) FROM nflx_top_10;

-- English title with highest cumulative weeks
SELECT show_title, cumulative_weeks_in_top_10
FROM nflx_top_10
WHERE week_date = (SELECT MAX(week_date) FROM nflx_top_10)
AND category IN ('Films (English)', 'TV (English)')
ORDER BY cumulative_weeks_in_top_10 DESC
LIMIT 1;

-- Average weekly hours viewed (exclude outage week)
SELECT AVG(weekly_hours_viewed)
FROM nflx_top_10
WHERE show_title = 'Stranger Things'
AND weekly_hours_viewed > 0;

-- Lowest IMDb-rated title and its rank
SELECT n.show_title, n.weekly_rank, i.rating
FROM nflx_top_10 n
JOIN imdb_ratings i
ON n.show_title = i.title
WHERE n.week_date = (SELECT MAX(week_date) FROM nflx_top_10)
AND i.rating > 0
ORDER BY i.rating ASC
LIMIT 1;
