# Retail Sales Dashboard

**Description:** Retail Sales & Profitability Dashboard built with SQL + Power BI.  
Analyzes sales, profit, and customer segments using the Sample Superstore dataset.

## Goal
Provide executives and analysts with a clear view of sales performance, profitability, and customer trends.  
This project combines SQL queries with interactive Power BI dashboards to answer key business questions.

## Tech Stack
- **Database:** SQLite (SQL backend for cleaning and queries)  
- **Visualization:** Power BI  
- **Language:** Python (for loading data into SQL)  

## Dataset Source
[Sample Superstore (Kaggle)](https://www.kaggle.com/datasets/vivek468/superstore-dataset-final)

## KPIs
- **Revenue (Sales):** Sum of `Sales`.  
- **Profit:** Sum of `Profit`.  
- **Profit Margin (%):** `SUM(Profit) / SUM(Sales)`.  
- **Top Products:** Ranked by revenue.  
- **Bottom Products:** Lowest profit margin (filtering out trivial sales).  
- **Regional Performance:** Sales & profit by region/state.  
- **Customer Segments:** Consumer, Corporate, Home Office sales share.  

---

## Dashboards & Insights

### Executive Overview
- **KPI Cards:** Total Sales, Profit, and Margin %.  
- **Trend Line:** Sales & Profit over time.  
- **Date Slicer:** Flexible filtering by order date.  
📸  

![Executive Overview](executive_overview.png)

*Insight:* Sales and profit grew steadily from 2014 to 2017, with margins holding around 12–13%.  

---

### Products Page
- **Bar Chart (Top 10 Products by Sales):** Identifies revenue drivers.  
- **Bar Chart (Bottom 10 by Profit Margin):** Flags products eroding margins.  
- **Slicers:** Filter by category and sub-category.  
📸  

![Products](products.png)

*Insight:* A handful of high-ticket products drive revenue, but many office supply items show negative margins.  

---

### Regions & Customers
- **Filled Map:** Sales by state, highlighting regional concentrations.  
- **Donut Chart:** Sales share by customer segment.  
- **Region Filter:** Central, East, South, West.  
📸  

![Regions & Customers](regions_customers.png)

*Insight:* Sales are strongest in coastal regions, with **Consumer** customers making up over 50% of revenue.  

---

## Files in Repository
- `/data`: Raw dataset(s).  
- `/sql`: SQL queries for KPIs.  
- `/pbix`: Power BI dashboard files (`.pbix`).  
- `README.md`: Documentation.  

