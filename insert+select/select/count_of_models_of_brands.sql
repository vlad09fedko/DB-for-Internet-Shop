SELECT 
    brands.title AS brand_title,
    COUNT(models.id) AS models_count
FROM brands
LEFT JOIN models ON brands.id = models.brand_id
GROUP BY brands.id
ORDER BY models_count;