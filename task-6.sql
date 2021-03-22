select company_name,
       COUNT(order_id),
       STRING_AGG(order_id::text, ', ') as orders
from orders o, customers c
WHERE c.customer_id = o.customer_id AND country = 'USA'
GROUP BY company_name HAVING count(order_id)<5 order by count(order_id);