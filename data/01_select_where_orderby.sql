-- Basic SELECT, WHERE, and ORDER BY examples

-- Find all completed orders over $100
SELECT
    order_id,
    customer_id,
    order_date,
    total_amount
FROM orders
WHERE order_status = 'Completed'
  AND total_amount > 100
ORDER BY total_amount DESC;

-- Show customers from the West region
SELECT
    customer_id,
    customer_name,
    region
FROM customers
WHERE region = 'West'
ORDER BY customer_name;
