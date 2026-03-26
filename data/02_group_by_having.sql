-- GROUP BY and HAVING examples

-- Total sales by order status
SELECT
    order_status,
    COUNT(*) AS order_count,
    SUM(total_amount) AS total_sales
FROM orders
GROUP BY order_status
ORDER BY total_sales DESC;

-- Customers with more than 3 orders
SELECT
    customer_id,
    COUNT(order_id) AS total_orders
FROM orders
GROUP BY customer_id
HAVING COUNT(order_id) > 3
ORDER BY total_orders DESC;
