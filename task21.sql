SELECT
    product_id
FROM
    Products
WHERE
    lower(low_fats) = 'y'
    AND lower(recyclable) = 'y';

