SELECT
    f.date,
    sum(
        CASE WHEN (
            SELECT
                action
            FROM fb_friend_requests f2
            WHERE
                f.user_id_sender = f2.user_id_sender
                AND f.user_id_receiver = f2.user_id_receiver
                AND f.date < f2.date) = 'accepted' THEN
            1
        ELSE
            0
        END) / count(f.user_id_sender)::float "ratio"
FROM
    fb_friend_requests f
WHERE
    f.action = 'sent'
GROUP BY
    f.date
ORDER BY
    f.date
