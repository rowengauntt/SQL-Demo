-- CASE statement examples

-- Bucket orders by size
SELECT
    order_id,
    total_amount,
    CASE
        WHEN total_amount < 50 THEN 'Small'
        WHEN total_amount BETWEEN 50 AND 200 THEN 'Medium'
        ELSE 'Large'
    END AS order_size
FROM orders
ORDER BY total_amount DESC;

-- Label customers by region group
SELECT
    customer_name,
    region,
    CASE
        WHEN region IN ('West', 'Northwest') THEN 'West Group'
        WHEN region IN ('East', 'Northeast') THEN 'East Group'
        ELSE 'Other'
    END AS region_group
FROM customers;
