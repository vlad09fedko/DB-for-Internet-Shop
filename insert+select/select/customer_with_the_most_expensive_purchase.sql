SELECT
customers.full_name,
orders.amount
FROM customers
LEFT JOIN orders ON orders.customer_id = customers.id
WHERE amount = (SELECT MAX(amount) FROM orders);