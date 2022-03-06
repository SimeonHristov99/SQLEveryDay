SELECT
    company,
    continent
FROM
    forbes_global_2010_2014
WHERE
    profits >= ALL (
        SELECT
            max(profits)
        FROM
            forbes_global_2010_2014)
