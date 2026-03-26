-- JOIN examples

-- Join orders to customers
SELECT
    o.order_id,
    o.order_date,
    o.total_amount,
    c.customer_name,
    c.region
FROM orders o
JOIN customers c
    ON o.customer_id = c.customer_id
ORDER BY o.order_date DESC;

-- Join order items to products
SELECT
    oi.order_id,
    p.product_name,
    p.category,
    oi.quantity,
    oi.unit_price
FROM order_items oi
JOIN products p
    ON oi.product_id = p.product_id
ORDER BY oi.order_id;
