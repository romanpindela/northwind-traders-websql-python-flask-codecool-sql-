SELECT product_name,
       round(sum((1 - discount) * quantity * order_details.unit_price))
           as "sum"
FROM order_details, products
WHERE products.product_id = order_details.product_id
GROUP BY order_details.product_id, products.product_name
ORDER BY sum ASC
limit 10;