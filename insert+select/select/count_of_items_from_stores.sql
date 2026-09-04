SELECT
stores.title AS store_title,
COUNT(items.id) AS count_of_items
FROM
items
LEFT JOIN stores ON items.store_id = stores.id
GROUP BY stores.id
ORDER BY count_of_items;