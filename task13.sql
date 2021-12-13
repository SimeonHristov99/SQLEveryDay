select distinct winery
from winemag_p1 wp
where lower(wp.description) like '%plum%'
or lower(wp.description) like '%cherry%'
or lower(wp.description) like '%rose%'
or lower(wp.description) like '%hazelnut%';