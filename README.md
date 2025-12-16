📌 Overview


This project analyzes COVID-19 data using Python, SQL Server, and Power BI to extract meaningful insights and visualize trends.
The workflow covers the entire data analytics lifecycle — from loading raw data, performing exploratory data analysis (EDA), cleaning and transforming data, running SQL queries, and finally building an interactive Power BI dashboard.

The goal of this project is to demonstrate end-to-end data analytics skills in a real-world dataset.

📁 Dataset

Source: Public COVID-19 dataset (CSV format)
Data Includes:

Date

Country / Region

Confirmed Cases

Recovered Cases

Deaths

Active

Granularity: Daily country-level data

🛠️ Tools & Technologies

Python: Data loading, EDA, cleaning, transformation

Libraries: pandas, numpy

SQL Server: Data storage and analytical queries

Power BI: Interactive dashboard & data visualization

Jupyter Notebook / VS Code: Development environment

GitHub: Version control & project documentation

🔍 Project Workflow / Steps

1️⃣ Data Loading (Python)

Loaded raw CSV dataset using pandas

Checked dataset structure, data types, and missing values

2️⃣ Exploratory Data Analysis (EDA)

Analyzed data distribution and trends

Identified missing values, duplicates, and negative values

Checked country-wise and date-wise data consistency

3️⃣ Data Cleaning & Transformation

Removed duplicates and handled missing values

Converted date columns to proper datetime format

Standardized country names

Created new calculated fields:

Active Cases

Daily New Cases

Daily Deaths

Exported cleaned dataset for SQL Server & Power BI

4️⃣ SQL Server Analysis

Connected Python script  into SQL Server

Performed analytical queries such as:

Total cases by country

Top affected countries

Daily and monthly trends

Last 30-day analysis

Optimized queries for performance

5️⃣ Power BI Dashboard

Connected Power BI to SQL Server

Created calculated measures using DAX

Built interactive visuals with slicers and filters

Designed a clean, professional dashboard layout


📊 Dashboard Overview

The Power BI dashboard includes:

#KPI Cards

  Total Confirmed Cases

  Total Recovered

  Total Deaths

  Active Cases

  Mortality Rate

#Visualizations

  Global COVID-19 map

  Daily & monthly trend analysis

  Top 10 affected countries

  Case distribution (Active / Recovered / Deaths)

#Filters

  Country

  Date range

The dashboard allows users to quickly understand global and country-level COVID-19 trends.

📈 Results & Insights

Identified countries with the highest COVID-19 impact

Observed major infection waves over time

Analyzed recovery and mortality trends

Built a reusable analytics pipeline for public health data


🎯 Key Skills Demonstrated

Data Cleaning & EDA

SQL Query Writing

Data Modeling

Dashboard Design

End-to-End Analytics Workflow

Business-ready Data Visualization
