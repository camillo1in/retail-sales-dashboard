SELECT
  `Segment`,
  ROUND(SUM(Sales), 2)  AS sales,
  ROUND(SUM(Profit), 2) AS profit,
  ROUND(SUM(Profit) * 1.0 / NULLIF(SUM(Sales), 0), 4) AS profit_margin
FROM sales_data
GROUP BY `Segment`
ORDER BY sales DESC;