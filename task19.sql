select p.id, p.name, count(*) as toy_count
from people p join toys t on p.id = t.people_id
group by p.id, p.name