SELECT
    order_date,
    order_details,
    total_order_cost,
    first_name
FROM
    customers c
    JOIN orders o ON c.id = o.cust_id
WHERE
    first_name = 'Jill'
    OR first_name = 'Eva'
ORDER BY
    c.id;

