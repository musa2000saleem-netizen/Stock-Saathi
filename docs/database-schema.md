# Database Schema v1

## products
- id
- name
- sku
- price
- stock_quantity
- low_stock_threshold
- created_at
- updated_at

## sales
- id
- product_id
- quantity
- total_amount
- sold_at

## udhaar_customers
- id
- customer_name
- phone
- balance_due

## udhaar_transactions
- id
- customer_id
- amount
- type
- created_at
