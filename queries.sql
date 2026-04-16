-- 1. Total Revenue
SELECT SUM(total_amount) AS total_revenue
FROM orders;
-- 2. Top 5 Revenue Generating Products
SELECT p.product_name,
       SUM(oi.quantity * p.price) AS revenue
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY revenue DESC
LIMIT 5;
-- 3. Highest Spending Customers
SELECT c.name,
       SUM(o.total_amount) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name
ORDER BY total_spent DESC
LIMIT 5;
-- 4. Monthly Sales Trend
SELECT DATE_FORMAT(order_date, '%Y-%m') AS month,
       SUM(total_amount) AS monthly_revenue
FROM orders
GROUP BY month
ORDER BY month ASC;
-- 5. Products Never Ordered
SELECT p.product_name
FROM products p
LEFT JOIN order_items oi ON p.product_id = oi.product_id
WHERE oi.product_id IS NULL;
