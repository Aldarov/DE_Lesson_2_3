select e.id, concat(p.surname, ' ' || p."name", ' ' || p.patronymic) as full_name, 
	em."year", 1 + sum(m.coefficient) as coefficient
from employees e
	inner join persons p on e.person_id = p.id
	inner join employee_marks em on em.employee_id = e.id
	inner join marks m on em.mark_id = m.id
group by e.id, full_name, em."year"