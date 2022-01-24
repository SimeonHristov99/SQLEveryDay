select employeename, basepay
from sf_public_salaries
where lower(jobtitle) like '%captain%'