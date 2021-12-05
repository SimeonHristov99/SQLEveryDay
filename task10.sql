select neighbourhood, avg(beds)
from airbnb_search_details
group by neighbourhood
having sum(beds) > 2
order by avg(beds) desc