SELECT 
    c.name,
    o.order_id
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id;

SELECT 
    c.name,
    p.product_name,
    o.quantity
FROM orders o
JOIN customers c 
    ON o.customer_id = c.customer_id
JOIN products p 
    ON o.product_id = p.product_id;

SELECT 
    c.name,
    o.order_id
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id;

