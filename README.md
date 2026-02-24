# Instagram User Analytics (SQL Project)

## Project Overview
This project analyzes Instagram user data from a CSV file to better understand user behavior and engagement patterns.  
The dataset is already cleaned, so the focus is on SQL analysis, user segmentation, and business insights.

## Business Goal
Identify high-value user segments and key engagement drivers to support smarter targeting and campaign planning.

## Scope
- Load prepared (clean) CSV data into MySQL
- Run SQL aggregations
- Segment users by key metrics
- Summarize actionable insights

## Tech Stack
- SQL (MySQL)
- DBeaver
- Git/GitHub

## Project Structure
```text
data_engineering_project1/
├── data/
│   └── raw/
│       ├── data.csv          # local full dataset (ignored)
│       └── sample.csv        # small sample for GitHub
├── sql/
│   └── analysis.sql
├── .gitignore
└── README.md
```
## Dataset
- Source: Kaggle
- Status: pre-cleaned dataset
- Local full file: data.csv
- Repository sample: sample.csv

## Workflow
- Import CSV into MySQL table
- Execute queries from analysis.sql in DBeaver
- Analyze query outputs
- Document business insights

## Analytical Questions
- Which countries have the largest user base?
- Which user segments have the highest engagement?
- How does posting activity relate to engagement?
- Which users have growth potential?
- What actions should be prioritized based on these insights?
 ## How to run
 - Open MySQL connection in DBeaver
 - Import data.csv into table data
 - Run SQL queries from analysis.sql

 ## Expected Outputs
 - Aggregated SQL results
 - User segmentation outputs
 - Business-focused insights for audience strategy
  
