-- View customers
SELECT * FROM customers;

-- Total revenue
SELECT SUM(total_amount) AS total_revenue
FROM orders;

-- Customer orders
SELECT c.name, o.order_date, o.total_amount
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id;

-- Product sales
SELECT p.product_name, SUM(oi.quantity) AS total_sold
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_name;