SELECT product_name as product, s.supplier_id as supplier
FROM products
INNER JOIN suppliers s on products.supplier_id = s.supplier_id
