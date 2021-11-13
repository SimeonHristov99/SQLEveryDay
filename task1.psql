select distinct
(select max(e.salary) from db_dept d join db_employee e on d.id = e.department_id
where d.department = 'marketing') -
(select max(e.salary) from db_dept d join db_employee e on d.id = e.department_id
where d.department = 'engineering') as difference