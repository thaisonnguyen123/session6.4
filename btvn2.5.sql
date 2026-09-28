INSERT INTO orders VALUES
('O004', '2024-09-10', 'C003');

INSERT INTO order_details VALUES
('O004', 'MacBook Pro', 1, 32000000),
('O004', 'Apple Mouse', 1, 1200000);

SELECT SUM(quantity * price) AS total_revenue
FROM order_details;

SELECT 
    order_id,
    AVG(quantity * price) AS avg_revenue_per_order
FROM order_details
GROUP BY order_id;

SELECT 
    o.order_id,
    SUM(od.quantity * od.price) AS total_amount
FROM orders o
JOIN order_details od ON o.order_id = od.order_id
GROUP BY o.order_id;

SELECT 
    o.order_id,
    SUM(od.quantity * od.price) AS total_amount
FROM orders o
JOIN order_details od ON o.order_id = od.order_id
GROUP BY o.order_id
ORDER BY total_amount DESC
LIMIT 1;

SELECT 
    product_name,
    SUM(quantity) AS total_sold
FROM order_details
GROUP BY product_name
ORDER BY total_sold DESC
LIMIT 3;
