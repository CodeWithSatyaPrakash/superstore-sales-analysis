--- 1.Total Sales, Profit and Quantity Sold
SELECT 
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    SUM(quantity) AS total_quantity
FROM sales_data;
--- 2.Sales and Profit by Category
SELECT 
    category,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM sales_data
GROUP BY category
ORDER BY total_sales DESC;
--- 3.Top 5 Cities by Sales
SELECT 
    city,
    SUM(sales) AS total_sales
FROM sales_data
GROUP BY city
ORDER BY total_sales DESC
LIMIT 5;
---4️. Monthly Sales Trend
SELECT 
    DATE_TRUNC('month', "order_date") AS month,
    SUM(sales) AS total_sales
FROM sales_data
GROUP BY month
ORDER BY month;
---5. Profitability by Region
SELECT 
    region,
    SUM(profit) AS total_profit
FROM sales_data
GROUP BY region
ORDER BY total_profit DESC;
---6️. Most Popular Product (by Quantity Sold)
SELECT "product_name",
    SUM(quantity) AS total_quantity
FROM sales_data
GROUP BY "product_name"
ORDER BY total_quantity DESC
LIMIT 1;
---7️. Average Discount by Sub-Category
SELECT 
    "sub_category",
    AVG(discount) AS avg_discount
FROM sales_data
GROUP BY "sub_category"
ORDER BY avg_discount DESC;
---8️.Orders where Profit was Negative
SELECT *
FROM sales_data
WHERE profit < 0
ORDER BY profit ASC;
---9.Total Orders per Shipping Mode
SELECT 
    "ship_mode",
    COUNT(DISTINCT "order_id") AS total_orders
FROM sales_data
GROUP BY "ship_mode";
---10.Top 5 Customers by Sales
SELECT 
    "customer_name",
    SUM(sales) AS total_sales
FROM sales_data
GROUP BY "customer_name"
ORDER BY total_sales DESC
LIMIT 5;







