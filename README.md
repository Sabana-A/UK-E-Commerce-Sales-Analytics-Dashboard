
# UK E-Commerce Sales Analytics Dashboard

An end-to-end ETL and data analytics project built on real-world UK online retail transaction data — from raw data cleaning to a fully interactive Power BI dashboard.

## 📊 Project Overview

This project simulates a real analytics workflow: extracting messy transactional data, cleaning it with Python, loading it into a relational database (Oracle), analyzing it with SQL, and visualizing the results in Power BI.

## 🛠️ Tech Stack

- **Python (Pandas)** — data cleaning in Google Colab
- **Oracle SQL / SQL\*Loader** — data loading and querying
- **SQL** — business analysis queries
- **Power BI** — interactive dashboard and visualization

## 🔄 ETL Pipeline

1. **Extract** — Sourced UK online retailer transaction data (Kaggle "E-Commerce Data" dataset)
2. **Transform** — Cleaned in Python: removed missing CustomerIDs, dropped duplicates, removed cancelled orders/returns, fixed date types, standardized text, added calculated `TotalPrice` column
3. **Load** — Loaded ~127,000 clean rows into an Oracle database table via SQL\*Loader
4. **Analyze** — Ran SQL queries to extract key business metrics
5. **Visualize** — Built an interactive Power BI dashboard

## 📈 Key Insights

- The **UK dominates revenue** by a wide margin compared to other countries
- **Average Order Value**: ~£450
- Top-selling product by quantity: **Medium Ceramic Top Storage Jar**
- Highest-spending customer generated **~£99K** in total revenue
- Revenue shows a **seasonal trend** across the Dec 2010 – May 2011 period

## 📸 Dashboard

<img width="1265" height="797" alt="Screenshot 2026-09-19 155409" src="https://github.com/user-attachments/assets/5fc2d222-1032-4dbb-816c-a78b8ad06f6d" />


The dashboard includes:
- **KPI Cards**: Total Revenue, Total Orders, Total Customers, Average Order Value, Units Sold
- **Revenue Trend** — monthly revenue over time
- **Orders by Day of Week** — order distribution across weekdays
- **Revenue vs Orders** — combined trend comparison
- **Top Products by Revenue** — best-performing products
- **Revenue by Country** — geographic breakdown
- **Top Customers by Spend** — highest-value customers

## 📁 Repository Contents

- `data_cleaning.ipynb` — Python data cleaning notebook (Google Colab)
- `analysis_queries.sql` — SQL table creation and analysis queries
- `dashboard.pbix` — Power BI dashboard file
- `dashboard.png` — Dashboard screenshot

## 🚀 How to Run

1. Clone this repository
2. Open `data_cleaning.ipynb` in Google Colab or Jupyter to see the cleaning process
3. Run `analysis_queries.sql` against your own Oracle (or adapt for another SQL database)
4. Open `dashboard.pbix` in Power BI Desktop to explore the interactive dashboard

## 👤 Author

Sabana Fathima A
