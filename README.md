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

| Month     | Monthly Sales | Monthly Profit |
|-----------|---------------|----------------|
| 2014-01   | 14,236.90     | 2,450.19       |
| 2014-02   | 4,519.89      | 862.31         |
| 2014-03   | 55,691.01     | 498.73         |
| 2014-04   | 28,295.35     | 3,488.84       |
| 2014-05   | 23,648.29     | 2,738.71       |
| 2014-06   | 34,595.13     | 4,976.52       |
| 2014-07   | 33,946.39     | -841.48        |
| 2014-08   | 27,909.47     | 5,318.11       |
| 2014-09   | 81,777.35     | 8,328.10       |
| 2014-10   | 31,453.39     | 3,448.26       |
| 2014-11   | 78,628.72     | 9,292.13       |
| 2014-12   | 69,545.62     | 8,983.57       |
| 2015-01   | 18,174.08     | -3,281.01      |
| 2015-02   | 11,951.41     | 2,813.85       |
| 2015-03   | 38,726.25     | 9,732.10       |
| 2015-04   | 34,195.21     | 4,187.50       |
| 2015-05   | 30,131.69     | 4,667.87       |
| 2015-06   | 24,797.29     | 3,335.56       |
| 2015-07   | 28,765.33     | 3,288.65       |
| 2015-08   | 36,898.33     | 5,355.81       |
| 2015-09   | 64,595.92     | 8,209.16       |
| 2015-10   | 31,404.92     | 2,817.37       |
| 2015-11   | 75,972.56     | 12,474.79      |
| 2015-12   | 74,919.52     | 8,016.97       |
| 2016-01   | 18,542.49     | 2,824.82       |
| 2016-02   | 22,978.82     | 5,004.58       |
| 2016-03   | 51,715.88     | 3,611.97       |
| 2016-04   | 38,750.04     | 2,977.81       |
| 2016-05   | 56,987.73     | 8,662.15       |
| 2016-06   | 40,344.53     | 4,750.38       |
| 2016-07   | 39,261.96     | 4,432.88       |
| 2016-08   | 31,115.37     | 2,062.07       |
| 2016-09   | 73,410.02     | 9,328.66       |
| 2016-10   | 59,687.75     | 16,243.14      |
| 2016-11   | 79,411.97     | 4,011.41       |
| 2016-12   | 96,999.04     | 17,885.31      |
| 2017-01   | 43,971.37     | 7,140.44       |
| 2017-02   | 20,301.13     | 1,613.87       |
| 2017-03   | 58,872.35     | 14,751.89      |
| 2017-04   | 36,521.54     | 933.29         |
| 2017-05   | 44,261.11     | 6,342.58       |
| 2017-06   | 52,981.73     | 8,223.34       |
| 2017-07   | 45,264.42     | 6,952.62       |
| 2017-08   | 63,120.89     | 9,040.96       |
| 2017-09   | 87,866.65     | 10,991.56      |
| 2017-10   | 77,776.92     | 9,275.28       |
| 2017-11   | 118,447.83    | 9,690.10       |
| 2017-12   | 83,829.32     | 8,483.35       |

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
