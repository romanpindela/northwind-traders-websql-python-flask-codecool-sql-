SELECT category_name as category, count(p.product_id)
FROM categories
LEFT JOIN products p on categories.category_id = p.category_id
GROUP BY category_name