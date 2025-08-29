# Retail Sales Dashboard

**Description:** Retail Sales & Profitability Dashboard built with SQL + Power BI.  
Analyzes sales, profit, and customer segments using the Sample Superstore dataset.

## Goal
Analyze sales and profitability, and present KPIs in Power BI.

## Dataset Source
[Sample Superstore (Kaggle)](https://www.kaggle.com/datasets/vivek468/superstore-dataset-final)

## Dataset Overview
- **Row Count:** 9,995
- **Column Names:** Row ID, Order ID, Order Date, Ship Date, Ship Mode, Customer ID, Customer Name, Segment, Country, City, State, Postal Code, Region, Product ID, Category, Sub-Category, Product Name, Sales, Quantity, Discount, Profit
- **Data Types:**
  - Row ID → Integer
  - Order ID → String
  - Order Date → Date
  - Ship Date → Date
  - Ship Mode → String
  - Customer ID → String
  - Customer Name → String
  - Segment → String
  - Country → String
  - City → String
  - State → String
  - Postal Code → Integer
  - Region → String
  - Product ID → String
  - Category → String
  - Sub-Category → String
  - Product Name → String
  - Sales → Float
  - Quantity → Integer
  - Discount → Float
  - Profit → Float

## Data Insights

- **Total Sales:** 22,972,200.86  
- **Total Profit:** 286,397.02  

### Sales and Profit by Month:

*(see detailed monthly breakdown in earlier section)*

## KPIs

- **Revenue (Sales):** Sum of `Sales` over the selected period/level.  
- **Profit:** Sum of `Profit` over the selected period/level.  
- **Profit Margin (%):** `SUM(Profit) / SUM(Sales)`; undefined when sales = 0.  
- **Top Products (by Sales):** Rank products by `SUM(Sales)` (ties by `SUM(Profit)`).  
- **Bottom Products (by Margin):** Lowest `SUM(Profit) / SUM(Sales)` with `SUM(Sales) > 1000` to exclude trivial volume.  
- **Regional Performance:** `SUM(Sales)`, `SUM(Profit)`, and `Profit Margin` grouped by `Region`.  
- **Customer Segment Performance:** Same metrics grouped by `Segment`.  

- **Top 10 Products by Sales:** [`sql/1_top_10_products_by_sales.sql`](sql/1_top_10_products_by_sales.sql)  
- **Bottom 10 by Profit Margin:** [`sql/2_bottom_10_products_by_margin.sql`](sql/2_bottom_10_products_by_margin.sql)  
- **Sales by Region:** [`sql/3_sales_by_region.sql`](sql/3_sales_by_region.sql)  
- **Sales by Segment:** [`sql/4_sales_by_segment.sql`](sql/4_sales_by_segment.sql)  

---

## Day 4 – Power BI Executive Overview
- Added KPI cards for **Total Sales**, **Total Profit**, and **Margin %**.  
- Built line chart showing **Sales & Profit trend over time**.  
- Added **date slicer (Between)** for interactive filtering.  
- Page layout: clean executive snapshot.  

## Day 5 – Power BI Products Page
- Built **Top 10 Products by Sales** bar chart.  
- Built **Bottom 10 Products by Profit Margin** bar chart.  
- Added **slicers for Category and Sub-Category** for interactive filtering.  
- Page layout: focused on product-level analysis.  

---

## Files in Repository
- `/data`: Dataset(s).  
- `/sql`: SQL queries used for KPI definitions.  
- `/powerbi`: Power BI `.pbix` dashboard file.  
- `README.md`: Documentation (this file).  
