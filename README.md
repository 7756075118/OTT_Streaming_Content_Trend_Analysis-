# 🎬 OTT Streaming Content Trend Analysis
# Day 1
## 📌 Project Overview

This project analyzes an OTT streaming content dataset to identify trends in movies and TV shows, genres, countries, ratings, release years, content additions, movie durations, and TV show seasons.

The analysis uses **Python, SQL, Pandas, Matplotlib, Seaborn, and MySQL** to perform data cleaning, exploratory data analysis (EDA), visualization, and business insight generation.

The main objective is to understand the composition and evolution of OTT content and provide data-driven recommendations for content strategy.

---

## 🎯 Objectives

The key objectives of this project are:

- Analyze the distribution of Movies and TV Shows.
- Identify content release trends over the years.
- Analyze the growth of content added to the OTT platform.
- Identify the most common genres.
- Analyze genre trends over time.
- Identify countries contributing the most content.
- Analyze content ratings.
- Understand movie duration patterns.
- Analyze the number of seasons in TV Shows.
- Use SQL to perform business-oriented analysis.
- Generate actionable content strategy recommendations.

---

## 📊 Dataset

The project uses the `netflix_titles.csv` dataset.

### Dataset Size

- **Rows:** 6,234
- **Columns:** 12

### Dataset Columns

| Column         |               Description                   |
|-------------- -|---------------------------------------------|
| `show_id`      | Unique identifier of the title              |
| `type`         | Movie or TV Show                            |
| `title`        | Title name                                  |
| `director`     | Director of the content                     |
| `cast`         | Main cast                                   |
| `country`      | Country or countries associated with the content |
| `date_added`   | Date the title was added to Netflix         |
| `release_year` | Original release year                       |
| `rating`       | Content rating                              |
| `duration`     | Movie duration or number of seasons         |
| `listed_in`    | Genre/category information                  |
| `description`  | Content description                         |

---

## 🛠️ Technologies Used

### Programming & Analysis

- Python
- Pandas
- NumPy

### Data Visualization

- Matplotlib
- Seaborn

### Database & SQL

- MySQL
- MySQL Workbench
- MySQL Connector for Python

### Documentation

- Jupyter Notebook
- Microsoft Word
- Git & GitHub

---

## 📁 Project Structure

```text
OTT_Streaming_Content_Trend_Analysis/
│
├── data/
│   └── netflix_titles.csv
│
├── notebooks/
│   └── OTT_Content_Trend_Analysis.ipynb
│
├── sql/
│   └── ott_analysis.sql
│
├── Charts/
│   ├── 01_movies_vs_tv_shows.png
│   ├── 02_content_by_release_year.png
│   ├── 03_content_added_by_year.png
│   ├── 04_top_10_genres.png
│   ├── 05_genre_trends.png
│   ├── 06_top_10_countries.png
│   ├── 07_content_by_rating.png
│   ├── 08_movie_duration_distribution.png
│   └── 09_tv_show_seasons.png
│
├── reports/
│   └── content_strategy_memo.docx
│
└── README.md

## Day 2 — OTT Streaming Content Trend Analysis

## 📌 Project Overview

Analyze the OTT catalog using Python, SQL, and Excel to identify genre distribution, release-year trends, content ratings, production-country mix, and movie duration.

Tools Used
Python
Pandas
Matplotlib
Seaborn
SQL
Excel


Analysis Performed
Data inspection and cleaning
Movies vs TV Shows comparison
Top 10 genre analysis
Release-year trend analysis
Content rating distribution
Production-country analysis
Movie duration analysis


Deliverables
ott_content_eda.ipynb
ott_analysis.sql
content_analysis.xlsx
content_strategy_memo.md
Visualizations saved in visualizations/


Business Value
The analysis identifies patterns in the available content catalog and provides hypotheses for genre acquisition, regional expansion, and content portfolio planning. These recommendations should be validated against audience engagement and acquisition costs.

---

## Day 3 — Exploratory Data Analysis (EDA) & Content Strategy

### Objective
To analyze OTT streaming catalog data and identify patterns in content types, genres, country-wise distribution, content ratings, release years, and movie duration.

### Tools & Technologies
- Python
- Pandas and NumPy
- Matplotlib
- MySQL
- Jupyter Notebook

### Tasks Completed

1. Loaded and inspected the Netflix titles dataset.
2. Analyzed content types, genres, countries, ratings, release years, and movie duration.
3. Created visualizations to understand catalog trends.
4. Prepared SQL aggregation queries for content analysis.
5. Developed business insights and content acquisition recommendations.

### Key Findings

- **Total Titles:** 6,234
- **Movies:** 4,265 (approximately 68.4%)
- **TV Shows:** 1,969 (approximately 31.6%)
- **Top Genre:** Dramas — 1,077 titles
- **Top Primary Country:** United States — 2,302 titles
- **Most Represented Release Year:** 2018 — 1,063 titles
- **Most Common Content Rating:** TV-MA — 2,027 titles
- **Median Movie Duration:** 98 minutes

### Visualizations

The following charts were created to analyze the catalog:

1. Movies vs TV Shows
2. Top 10 Genres
3. Content Distribution by Release Year
4. Top 10 Countries
5. Content Ratings Distribution
6. Movie Runtime Distribution

### Business Recommendations

1. **Genre Strategy:** Evaluate genre-level viewing hours and completion rates before allocating acquisition budgets.
2. **Regional Strategy:** Investigate regional content gaps using country-level viewing data and language preferences.
3. **Format Strategy:** Compare movie runtimes and TV show formats using audience engagement and retention metrics.

### Project Deliverables

- EDA Jupyter Notebook
- Data visualization charts
- SQL analysis queries
- Content strategy memo
- Business insights and recommendations

### Conclusion

The analysis identified the distribution of movies and TV shows, leading primary genres, country representation, release-year patterns, content ratings, and movie duration. Combining these findings with audience engagement and financial performance data can support better content acquisition decisions.

**Note:** Catalog counts represent the number of listed titles and do not directly measure viewership or profitability.