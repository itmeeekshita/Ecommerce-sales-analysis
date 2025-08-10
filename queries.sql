-- queries.sql

-- 1. Total revenue per product
SELECT p.product_name, SUM(od.quantity * p.price) AS total_revenue
FROM OrderDetails od
JOIN Products p ON od.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_revenue DESC;

-- 2. Top 3 customers by total spend
SELECT c.name, SUM(od.quantity * p.price) AS total_spent
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
JOIN OrderDetails od ON o.order_id = od.order_id
JOIN Products p ON od.product_id = p.product_id
GROUP BY c.name
ORDER BY total_spent DESC
LIMIT 3;

-- 3. Products with low stock
SELECT product_name, stock
FROM Products
WHERE stock < 15;

-- 4. Monthly sales summary
SELECT DATE_FORMAT(o.order_date, '%Y-%m') AS month,
       SUM(od.quantity * p.price) AS monthly_sales
FROM Orders o
JOIN OrderDetails od ON o.order_id = od.order_id
JOIN Products p ON od.product_id = p.product_id
GROUP BY month
ORDER BY month;
