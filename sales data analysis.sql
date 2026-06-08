
SELECT * FROM sales_analysis.online_sales;
SELECT * 
FROM sales_analysis.online_sales
LIMIT 10;
SELECT
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM sales_analysis.online_sales
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY year, month;
SELECT
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS revenue
FROM sales_analysis.online_sales
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY revenue DESC
LIMIT 3;
SELECT
    MONTH(order_date) AS month,
    SUM(amount) AS revenue,
    COUNT(DISTINCT order_id) AS orders
FROM sales_analysis.online_sales
WHERE YEAR(order_date) = 2024
GROUP BY MONTH(order_date)
ORDER BY month;