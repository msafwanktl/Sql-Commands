CREATE TABLE customers (
    customer_id INTEGER PRIMARY KEY,
    name TEXT,
    country TEXT
);

CREATE TABLE products (
    product_id INTEGER PRIMARY KEY,
    product_name TEXT,
    price REAL
);
CREATE TABLE orders (
    order_id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    product_id INTEGER,
    quantity INTEGER,
    order_date TEXT
);
INSERT INTO customers (name, country) VALUES
('Alice', 'USA'),
('Bob', 'UK'),
('Charlie', 'Canada'),
('David', 'USA');

INSERT INTO products (product_name, price) VALUES
('Laptop', 1200),
('Phone', 800),
('Tablet', 400),
('Headphones', 150);

INSERT INTO orders (customer_id, product_id, quantity, order_date) VALUES
(1, 1, 1, '2025-01-10'),
(2, 2, 2, '2025-01-11'),
(1, 3, 1, '2025-01-12'),
(3, 4, 3, '2025-01-13'),
(4, 2, 1, '2025-01-14');

SELECT * FROM customers;

SELECT * FROM customers
WHERE country = 'USA';

SELECT * FROM products
ORDER BY price DESC;

SELECT * FROM products
ORDER BY price DESC
LIMIT 2;

SELECT country, COUNT(*) AS total_customers
FROM customers
GROUP BY country;

SELECT customer_id, SUM(quantity) AS total_items
FROM orders
GROUP BY customer_id;

SELECT AVG(price) AS avg_price
FROM products;

SELECT 
    product_id,
    SUM(quantity) AS total_units
FROM orders
GROUP BY product_id;

SELECT 
    p.product_name,
    SUM(o.quantity * p.price) AS revenue
FROM orders o
JOIN products p 
    ON o.product_id = p.product_id
GROUP BY p.product_name;

SELECT customer_id, COUNT(*) AS order_count
FROM orders
GROUP BY customer_id
HAVING COUNT(*) > 1;

