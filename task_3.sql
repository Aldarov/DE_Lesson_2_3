select e.id, concat(p.surname, ' ' || p."name", ' ' || p.patronymic) as full_name
from employees e
	inner join persons p on e.person_id = p.id
where p.has_driving_license = true