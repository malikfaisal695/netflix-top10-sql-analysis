# Netflix Top 10 SQL Analysis

## Project Overview
This project analyzes Netflix Top 10 viewership data using MySQL. The goal is to answer business questions related to content performance, viewer engagement, and ratings.

## Dataset
- Weekly Netflix Top 10 rankings by category
- IMDb ratings for each title
- One known data outage week (May 22, 2022) where viewership data is missing

## Tools Used
- MySQL Workbench
- SQL
- GitHub

## Key Analysis
1. Identified the English title with the highest cumulative weeks in the Top 10 as of the most recent week.
2. Calculated average weekly hours viewed while excluding the outage week.
3. Joined Netflix data with IMDb ratings to find the lowest-rated title and its weekly rank.

## Data Cleaning
- Excluded the outage week where `weekly_hours_viewed = 0`
- Excluded titles with IMDb rating = 0

## Key Insights
- Stranger Things had the highest cumulative presence in the Top 10 among English titles.
- Collision was the lowest IMDb-rated title in the most recent week and ranked 7th.

## Folder Structure
- `sql/` → SQL scripts for table creation, cleaning, and analysis
- `data/` → CSV datasets used for analysis
  <img width="516" height="400" alt="image" src="https://github.com/user-attachments/assets/9d2c72c2-1a03-4321-a39d-f0a5a695e312" />
  <img width="670" height="473" alt="image" src="https://github.com/user-attachments/assets/37042fdd-aaeb-42a4-9b34-61948b5ef684" />

  



