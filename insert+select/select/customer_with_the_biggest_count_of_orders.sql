WITH customer_orders AS (
  SELECT 
    customer_id, 
    COUNT(id) AS orders_count
  FROM orders
  GROUP BY customer_id
)

SELECT 
  customers.full_name, 
  customer_orders.orders_count
FROM customer_orders
JOIN customers ON customers.id = customer_orders.customer_id
WHERE customer_orders.orders_count = (
  SELECT 
    MAX(orders_count) 
  FROM customer_orders);