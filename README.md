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

## Tech Stack
- Python
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
├── src/
│   └── etl.py
├── sql/
│   └── analysis.sql
├── .gitignore
└── README.md

