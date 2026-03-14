-- Top selling products
SELECT p.product_name, SUM(oi.quantity) AS total_sold
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_sold DESC;

-- Revenue by product
SELECT p.product_name,
SUM(p.price * oi.quantity) AS revenue
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_name;

-- Orders per customer
SELECT c.name, COUNT(o.order_id) AS total_orders
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.name;

-- Highest spending customer
SELECT c.name,
SUM(o.total_amount) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.name
ORDER BY total_spent DESC;

-- Products never ordered
SELECT product_name
FROM products
WHERE product_id NOT IN (
SELECT product_id FROM order_items
);