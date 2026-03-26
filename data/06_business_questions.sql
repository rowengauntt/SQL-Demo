-- Business question examples

-- 1. Which product categories generate the most revenue?
SELECT
    p.category,
    SUM(oi.quantity * oi.unit_price) AS revenue
FROM order_items oi
JOIN products p
    ON oi.product_id = p.product_id
GROUP BY p.category
ORDER BY revenue DESC;

-- 2. Which customers have spent the most?
SELECT
    c.customer_name,
    SUM(o.total_amount) AS lifetime_value
FROM orders o
JOIN customers c
    ON o.customer_id = c.customer_id
WHERE o.order_status = 'Completed'
GROUP BY c.customer_name
ORDER BY lifetime_value DESC;

-- 3. What are monthly sales totals?
SELECT
    DATE_TRUNC('month', order_date) AS sales_month,
    SUM(total_amount) AS monthly_sales
FROM orders
WHERE order_status = 'Completed'
GROUP BY DATE_TRUNC('month', order_date)
ORDER BY sales_month;
