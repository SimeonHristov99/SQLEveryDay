select user_id, SUM(number_of_comments)
from fb_comments_count
where date '2020-02-10' - interval '30 days' <= created_at
and created_at <= date '2020-02-10'
group by user_id