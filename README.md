# 🎬 Amazon Prime Video Data Pipeline — dbt & Snowflake

An end-to-end **data transformation and analytics project** using **Snowflake, dbt, and SQL** to transform Netflix data into clean, tested, and analytics-ready datasets.

## 🏗️ Architecture

```text
Netflix Data
     ↓
Snowflake
     ↓
Staging
     ↓
Dimension + Fact
     ↓
Mart
     ↓
Analysis / BI
```

## 🛠️ Tech Stack

* ❄️ **Snowflake** — Data Warehouse
* 🔧 **dbt** — Transformation & Data Modeling
* 🗃️ **SQL** — Analysis & Transformation
* 🌱 **dbt Seeds** — Reference Data
* 📸 **dbt Snapshots** — Historical Tracking
* 🧩 **dbt Macros** — Reusable SQL Logic
* 📊 **Power BI / Tableau** — Visualization

## 📂 Project Structure

```text
prime/
├── analyses/       # Analytical SQL queries
├── macros/         # Reusable dbt macros
├── models/
│   ├── staging/    # Data cleaning & standardization
│   ├── dim/        # Dimension models
│   ├── fct/        # Fact models
│   └── mart/       # Business-ready models
├── seeds/          # Reference CSV data
├── snapshots/      # Historical data tracking
├── dbt_project.yml
└── README.md
```

## 🔄 What This Project Demonstrates

* Data cleaning and transformation with **dbt**
* **Staging → Dimension → Fact → Mart** data modeling
* Snowflake data warehouse implementation
* dbt data quality testing
* Reusable SQL macros
* Seed and snapshot management
* Analytical SQL queries
* Analytics-ready data modeling

## 🚀 Key dbt Commands

```bash
dbt debug
dbt deps
dbt seed
dbt run
dbt test
dbt snapshot
dbt build
dbt docs generate
```

## 📊 Analysis

The transformed data can be used to analyze:

* Movies vs TV Shows
* Content by country
* Release trends
* Ratings
* Genres
* Content growth
* Movie duration

## 🎯 Goal

To build a practical **Analytics Engineering workflow** and demonstrate how dbt and Snowflake can transform raw data into reliable datasets for business analytics and BI reporting.

## 👨‍💻 Author

**Samyak Patil**
`SQL` · `Snowflake` · `dbt` · `Python` · `Power BI` · `Tableau` · `Data Analytics`
