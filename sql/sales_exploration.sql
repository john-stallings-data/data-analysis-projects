-- ============================================
-- Author: John Stallings
-- Purpose: Basic sales data exploration
-- ============================================

-- View the first 10 rows of the sales table
SELECT *
FROM sales
LIMIT 10;

-- Count total number of records
SELECT COUNT(*) AS total_records
FROM sales;

-- summarise sales by category
SELECT 
    category,
    COUNT(*) AS total_transactions,
    SUM(sales_amount) AS total_sales,
    ROUND(AVG(sales_amount), 2) AS avg_sale_value,
    MAX(sales_amount) AS highest_sale,
    MIN(sales_amount) AS lowest_sale
FROM sales
GROUP BY category
ORDER BY total_sales DESC;

-- Identify top 10 performing products
SELECT 
    product_name,
    SUM(sales_amount) AS total_sales
FROM sales
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 10;

-- Monthly sales trend
SELECT 
    DATE_FORMAT(sale_date, '%Y-%m') AS month,
    SUM(sales_amount) AS monthly_sales
FROM sales
GROUP BY month
ORDER BY month ASC;
```

4. Save this file directly into your repository folder as:
```
sales_exploration.sql
```

---

## What You Should See in GitHub Desktop

Switch back to GitHub Desktop — you should see:
- `sales_exploration.sql` appearing in the left panel with a green **"+"** symbol
- The SQL code highlighted in green on the right

---

## Step 3 — Commit to Your Branch

Just like before:

1. In the Summary box type:
```
Add sales data exploration SQL script
