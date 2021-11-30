select ag.gender, avg(review_score)
from airbnb_reviews ar
join airbnb_guests ag
on ar.from_user = ag.guest_id
where ar.from_type = 'guest'
group by ag.gender;