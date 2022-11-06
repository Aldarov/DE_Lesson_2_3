select e.id, concat(p.surname, ' ' || p."name", ' ' || p.patronymic) as full_name, 
	DATE_PART('year', CURRENT_DATE::date) - DATE_PART('year', e.start_date::date) AS experience
from employees e
	inner join persons p on e.person_id = p.id
order by experience desc