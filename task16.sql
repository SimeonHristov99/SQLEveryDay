WITH t AS (
    SELECT
        df.date,
        sum(
            CASE WHEN ad.paying_customer = 'no' THEN
                df.downloads
            END) non_paying,
        sum(
            CASE WHEN ad.paying_customer = 'yes' THEN
                df.downloads
            END) paying
    FROM
        ms_download_facts df
        JOIN ms_user_dimension ud ON df.user_id = ud.user_id
        JOIN ms_acc_dimension ad ON ud.acc_id = ad.acc_id
    GROUP BY
        df.date
    ORDER BY
        df.date
)
SELECT
    date,
    non_paying,
    paying
FROM
    t
WHERE
    non_paying > paying
