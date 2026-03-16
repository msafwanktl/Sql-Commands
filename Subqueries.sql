SELECT MAX(price)
FROM products;

SELECT *
FROM products
WHERE price = (
    SELECT MAX(price)
    FROM products
);

SELECT *
FROM orders
WHERE quantity = (
    SELECT MAX(quantity)
    FROM orders
);

SELECT AVG(price)
FROM products;

SELECT *
FROM products
WHERE price > (
    SELECT AVG(price)
    FROM products
);

SELECT name
FROM customers
WHERE customer_id IN (
    SELECT customer_id
    FROM orders
    WHERE product_id = (
        SELECT product_id
        FROM products
        WHERE product_name = 'Laptop'
    )
);
