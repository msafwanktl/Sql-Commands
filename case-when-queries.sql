SELECT 
    name,
    country,
    CASE 
        WHEN country = 'USA' THEN 'Domestic'
        ELSE 'International'
    END AS customer_type
FROM customers;

SELECT 
    order_id,
    quantity,
    CASE 
        WHEN quantity >= 2 THEN 'Bulk Order'
        ELSE 'Single Order'
    END AS order_type
FROM orders;

SELECT 
    p.product_name,
    SUM(o.quantity * p.price) AS revenue,
    CASE 
        WHEN SUM(o.quantity * p.price) > 2000 THEN 'High Revenue'
        ELSE 'Normal Revenue'
    END AS revenue_category
FROM orders o
JOIN products p 
    ON o.product_id = p.product_id
GROUP BY p.product_name;

