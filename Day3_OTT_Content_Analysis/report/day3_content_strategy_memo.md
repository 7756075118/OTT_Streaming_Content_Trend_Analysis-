# OTT Streaming Content Trend Analysis — Day 33

## 1. Project Objective

The objective of this project is to analyze an OTT streaming content catalog and identify trends in content types, popular genres, country-wise content distribution, content ratings, release years, and movie duration. The analysis aims to generate actionable insights that can help a content acquisition team make data-driven decisions.

## 2. Key Findings

### Finding 1 — Content Mix

The dataset contains **6,234 titles**, including **4,265 Movies** and **1,969 TV Shows**. Movies account for approximately **68.4%** of the catalog, while TV Shows represent approximately **31.6%**.

Dramas are the most frequently listed primary genre, with 1,077 titles, followed by Comedies with 803 titles and Documentaries with 644 titles.

**Business Insight:** The catalog has a larger movie collection, and Dramas represent the leading primary genre. The content team should evaluate audience engagement across both movies and TV shows to determine whether the current content mix meets viewer demand.

### Finding 2 — Genre and Regional Trends

The United States is the most represented primary country, with **2,302 titles**, followed by India with **808 titles** and the United Kingdom with 483 titles. The dataset also contains 476 titles with an unknown country entry.

The United States represents approximately 36.9% of all titles, while India represents approximately 13.0%.

**Business Insight:** The catalog has substantial representation from the United States and India. Improving missing country metadata and analyzing regional viewing patterns could help identify content gaps and potential localization opportunities.

### Finding 3 — Release-Year and Runtime Trends

The year **2018** has the highest number of titles by release year, with 1,063 titles, followed by 2017 with 959 titles and 2019 with 843 titles. TV-MA is the most common content rating, with 2,027 titles, followed by TV-14 with 1,698 titles.

The median movie duration is **98 minutes**, indicating that half of the movies with valid duration values are at or below 98 minutes and half are at or above this value.

**Business Insight:** The catalog contains a strong representation of titles released between 2016 and 2019. The content team should investigate how audience engagement varies by release year, content rating, and runtime before deciding which content formats to prioritize.

## 3. Business Recommendations

### Recommendation 1 — Genre Strategy

Dramas, Comedies, and Documentaries are the three most frequently represented primary genres in the dataset. The content acquisition team should evaluate viewing hours, completion rates, audience ratings, and acquisition costs for these genres.

Rather than investing only in genres with the largest catalog counts, the team should also test selected underrepresented genres to identify potential audience opportunities.

### Recommendation 2 — Regional Content Strategy

The United States and India are the two most represented primary countries in the dataset. The platform should analyze country-wise viewership, preferred languages, subscriber engagement, and regional content gaps.

Improving country metadata for the 476 titles currently classified as unknown would also make future regional analysis more reliable. Any expansion into regional or international content should be guided by actual audience demand and investment costs.

### Recommendation 3 — Content Format and Rating Strategy

The median movie duration is 98 minutes, and TV-MA and TV-14 are the most frequently recorded ratings. The content team should compare engagement across movie runtimes, TV show formats, and content ratings.

Small-scale content experiments can help determine which formats perform well for different audience segments. Decisions should be evaluated using viewing hours, completion rates, subscriber retention, and cost per engaged viewer.

## 4. Limitations

- The analysis is based on catalog metadata and does not directly measure viewership, revenue, profitability, or audience satisfaction.
- The number of titles in a genre does not necessarily indicate that the genre is the most watched or profitable.
- Country and genre analysis uses the first listed value for each title, so co-productions and titles with multiple genres may not be fully represented.
- Missing country and other metadata values may affect the accuracy of some findings.
Release-year counts indicate when titles were released, not when they were added to the streaming platform.

Content acquisition recommendations should be validated using viewing hours, completion rates, subscriber retention, audience demographics, and acquisition costs.

## 5. Conclusion

The analysis of 6,234 OTT catalog titles shows that Movies form approximately 68.4% of the collection, Dramas are the most frequently represented primary genre, and the United States is the leading primary country. The most represented release year is 2018, and the median movie duration is 98 minutes.

These findings provide an initial understanding of the platform's content composition and release patterns. By combining catalog analysis with audience engagement, regional viewing, and financial performance data, the content acquisition team can make more informed decisions about future content investments and improve its content strategy.

Project Status: Day 33 EDA, visualization, SQL analysis, and content strategy memo prepared based on the available catalog analysis results.