select e.id, concat(p.surname, ' ' || p."name", ' ' || p.patronymic) as full_name, m.name as mark
from employees e
	inner join persons p on e.person_id = p.id
	inner join employee_marks em on em.employee_id = e.id
	inner join marks m on em.mark_id = m.id
where em.mark_id in (4, 5)

