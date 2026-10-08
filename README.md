# 🎬 OTT Streaming Content Trend Analysis

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