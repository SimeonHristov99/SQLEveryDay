select T.department, e2.first_name, e2.salary, T.avg
from employee e2
join (
select e.department, avg(salary) as avg
from employee e
group by e.department
) as T
on T.department = e2.department
order by T.department;