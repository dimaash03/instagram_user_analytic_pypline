# Instagram User Analytics Pipeline

## Project Overview
This project analyzes Instagram user data from a CSV file to better understand user behavior and engagement patterns.  
The dataset is already cleaned, so the focus is on analysis, segmentation, and insights generation.

## Business Goal
Identify high-value user segments and key engagement drivers to support smarter targeting and campaign planning.

## Scope
- Load prepared (clean) CSV data
- Run SQL aggregations
- Segment users
- Summarize actionable insights

  Dataset
Source: Kaggle
Status: pre-cleaned dataset
Local full file: data.csv
Repository sample: sample.csv

Workflow
Load CSV data into MySQL
Run SQL queries from analysis.sql
Analyze outputs and extract insights

Analytical Questions
Which countries have the largest user base?
Which user segments have the highest engagement?
How does posting activity relate to engagement?
Which users have growth potential?


## Tech Stack
- Python
- SQL (MySQL)
- DBeaver
- Git/GitHub

Expected Outputs
Aggregated SQL results
User segmentation view
Business-focused insights for audience strategy

Notes
Large raw dataset is excluded from GitHub due to file size limits.
sample.csv is included for repository reproducibility.

## Project Structure
```text
data_engineering_project1/
├── data/
│   └── raw/
│       ├── data.csv          # local full dataset (ignored)
│       └── sample.csv        # small sample for GitHub
├── src/
│   └── etl.py
├── sql/
│   └── analysis.sql
├── .gitignore
└── README.md

How to Run
python src/etl.py
# then execute queries from sql/analysis.sql in DBeaver




