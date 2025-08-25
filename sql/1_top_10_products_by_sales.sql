SELECT
  `Product ID`,
  `Product Name`,
  ROUND(SUM(Sales), 2)        AS total_sales,
  ROUND(SUM(Profit), 2)       AS total_profit,
  ROUND(SUM(Profit) * 1.0 / NULLIF(SUM(Sales), 0), 4) AS profit_margin
FROM sales_data
GROUP BY `Product ID`, `Product Name`
HAVING SUM(Sales) > 0
ORDER BY total_sales DESC
LIMIT 10;