SELECT
customers.full_name,
items.price
FROM customers
LEFT JOIN orders ON customers.id = orders.customer_id
LEFT JOIN item_order ON item_order.order_id = orders.id 
LEFT JOIN items ON item_order.item_id = items.id 
WHERE price = (SELECT MAX(price) FROM items);
