# OTT Streaming Content Strategy Memo — Day 5

## 1. Project Objective

The objective of this project is to analyze Netflix catalog data to identify patterns in content types, genre distribution, release years, regional content distribution, content ratings, and movie duration.

The analysis uses Python, Pandas, Matplotlib, Seaborn, and SQL to explore the dataset, create visualizations, and generate business insights that can support content acquisition and catalog planning.

## 2. Key Findings

### Finding 1: Content Type Distribution

The dataset contains **6,234 titles**, including **4,265 movies** and **1,969 TV shows**.

- Movies represent approximately **68.4%** of the catalog.
- TV shows represent approximately **31.6%** of the catalog.

**Business interpretation:** Movies account for the larger share of the available catalog. The platform could review this distribution alongside audience engagement data to determine whether its current balance of movies and TV shows meets viewer preferences.

### Finding 2: Genre Distribution

The three most frequently listed genres are:

1. **International Movies:** 1,927 titles
2. **Dramas:** 1,623 titles
3. **Comedies:** 1,113 titles

Other prominent categories include International TV Shows (1,001), Documentaries (668), TV Dramas (599), and Action & Adventure (597).

**Business interpretation:** International Movies, Dramas, and Comedies have substantial representation in the catalog. The content acquisition team should evaluate their viewing performance and compare catalog coverage with audience demand before deciding which genres to expand.

*Note: Titles can belong to multiple genres, so genre counts may overlap and should not be added together to calculate the total number of unique titles.*

### Finding 3: Regional Content Distribution

The top three countries by title count are:

1. **United States:** 2,302 titles
2. **India:** 808 titles
3. **United Kingdom:** 483 titles

Other notable contributors include Canada (206), Japan (184), France (147), South Korea (146), Spain (139), Mexico (99), and Australia (94).

**Business interpretation:** The United States contributes the largest number of titles in this dataset, followed by India and the United Kingdom. This distribution highlights the importance of examining regional catalog coverage and evaluating opportunities for local-language content in markets where audience demand supports expansion.

*Note: These country counts use the primary country listed for each title. Titles associated with multiple countries are counted under their first listed country in this analysis.*

### Finding 4: Content Rating Distribution

The most frequent content classifications are:

- **TV-MA:** 2,027 titles
- **TV-14:** 1,698 titles
- **TV-PG:** 701 titles
- **R:** 508 titles
- **PG-13:** 286 titles

**Business interpretation:** TV-MA and TV-14 are the most frequently represented classifications in the catalog. The platform can review its content rating mix to understand how well its catalog serves different audience segments. These classifications indicate maturity suitability, not viewer ratings or content quality.

## 3. Actionable Recommendations

### Recommendation 1: Improve Content Portfolio Planning

Movies make up approximately 68.4% of the catalog, compared with 31.6% for TV shows.

**Action:** Evaluate viewing hours, completion rates, repeat viewing, and audience preferences for movies and TV shows. Use these measures to identify whether the current content mix should be maintained or adjusted.

### Recommendation 2: Evaluate Genre Acquisition Opportunities

International Movies, Dramas, and Comedies are the most frequently represented genres in the dataset.

**Action:** Compare genre-level catalog coverage with actual viewing performance. Investigate genres with strong audience demand but relatively limited catalog coverage, while considering licensing costs and content availability.

### Recommendation 3: Explore Regional Content Diversification

The United States, India, and the United Kingdom are the leading countries by primary-country title count.

**Action:** Evaluate opportunities for local-language movies and TV shows in different markets. Consider regional viewing behavior, language preferences, licensing costs, and audience engagement before making acquisition decisions.

## 4. Tools and Technologies

- **Python:** Data analysis and preprocessing
- **Pandas and NumPy:** Data manipulation and statistical calculations
- **Matplotlib and Seaborn:** Data visualization
- **SQL and MySQL Workbench:** Data aggregation and analytical queries
- **Jupyter Notebook:** Exploratory data analysis and documentation
- **Excel:** Additional summaries or reporting, if used

## 5. Limitations

The dataset contains Netflix catalog metadata rather than complete audience behavior or financial information. It does not provide sufficient information about viewing hours, completion rates, revenue, acquisition costs, or customer satisfaction.

Therefore, the findings describe catalog distribution and content patterns; they do not establish which genres or countries generate the highest audience engagement or revenue. Genre counts can overlap, and the country analysis uses only the first listed country for each title.

## 6. Conclusion

The analysis of 6,234 Netflix titles identified a catalog dominated by movies, with International Movies, Dramas, and Comedies among the most frequently listed genres. The United States, India, and the United Kingdom were the leading countries based on primary-country title counts, while TV-MA and TV-14 were the most common content classifications.

These findings provide a foundation for reviewing the content portfolio, evaluating genre opportunities, and exploring regional diversification. However, acquisition decisions should be supported by additional audience engagement, licensing, and financial data.

This project demonstrates how Python-based exploratory data analysis, data visualization, and SQL aggregation can transform raw streaming catalog data into structured business insights.