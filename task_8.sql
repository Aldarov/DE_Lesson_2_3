select el.id as employee_level_id, el.name as employee_level, round(avg(e.salary)) as avg_salary
from employees e
	inner join employee_levels el on el.id = e.employee_level_id
group by el.id, el.name
order by el.id