select d.name, count(*) as count_employees
from employees e
	inner join departments d on d.id = e.department_id
group by d.name	
order by count_employees desc
limit 1

