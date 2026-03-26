# Sample Schema

These SQL examples assume a simple retail-style dataset with the following tables:

## customers
- customer_id
- customer_name
- region
- signup_date

## products
- product_id
- product_name
- category
- price

## orders
- order_id
- customer_id
- order_date
- total_amount
- order_status

## order_items
- order_item_id
- order_id
- product_id
- quantity
- unit_price
