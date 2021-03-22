SELECT to_char(o.order_date, 'yyyy') as year,
       to_char(o.order_date, 'mm') as month,
       count(od.order_id) as order_count,
       round(sum((1 - discount) * quantity * od.unit_price))
        as "revenue"
FROM order_details od, orders o
WHERE od.order_id = o.order_id
    AND to_char(o.order_date, 'yyyy') = '1997'
GROUP BY 1, 2
ORDER BY month ASC

SELECT extract(year from o.order_date) as year,
       extract(month from o.order_date) as month,
       count(od.order_id) as order_count,
       round(sum((1 - discount) * quantity * od.unit_price))
        as "revenue"
FROM order_details od, orders o
WHERE od.order_id = o.order_id
    AND to_char(o.order_date, 'yyyy') = '1997'
GROUP BY 1, 2
ORDER BY month ASC;