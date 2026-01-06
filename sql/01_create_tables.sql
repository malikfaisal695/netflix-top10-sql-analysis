CREATE DATABASE netflix_analysis;
USE netflix_analysis;

CREATE TABLE nflx_top_10 (
    date_added DATE,
    week_date DATE,
    category VARCHAR(50),
    show_title VARCHAR(255),
    season_title VARCHAR(255),
    weekly_rank INT,
    cumulative_weeks_in_top_10 INT,
    weekly_hours_viewed BIGINT
);

CREATE TABLE imdb_ratings (
    title VARCHAR(255),
    rating DECIMAL(3,1)
);
