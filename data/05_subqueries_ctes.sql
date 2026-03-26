-- Subquery and CTE examples

-- Find orders above the average order amount
SELECT
    order_id,
    customer_id,
    total_amount
FROM orders
WHERE total_amount > (
    SELECT AVG(total_amount)
    FROM orders
)
ORDER BY total_amount DESC;

-- CTE for customer sales summary
WITH customer_sales AS (
    SELECT
        customer_id,
        COUNT(order_id) AS total_orders,
        SUM(total_amount) AS total_sales
    FROM orders
    GROUP BY customer_id
)
SELECT
    customer_id,
    total_orders,
    total_sales
FROM customer_sales
WHERE total_sales > 500
ORDER BY total_sales DESC;
