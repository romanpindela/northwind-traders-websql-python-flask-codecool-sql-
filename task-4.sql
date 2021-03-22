WITH listed_countries_and_customores AS (
    SELECT c.country as country_group, count(c.customer_id) as number_of_customers
    FROM customers c
             INNER JOIN customers cc ON cc.customer_id = c.customer_id
    GROUP BY c.country
)
SELECT country_group AS country, number_of_customers as customers
FROM listed_countries_and_customores
WHERE listed_countries_and_customores.number_of_customers > 5
ORDER BY  number_of_customers DESC