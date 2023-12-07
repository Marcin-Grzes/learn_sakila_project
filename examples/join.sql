select a.first_name, a.last_name
from film as fl
    INNER JOIN film_actor fa ON fl.film_id = fa.film_id
        INNER JOIN actor a on a.actor_id = fa.actor_id
where fl.title = 'ACADEMY DINOSAUR';

select a.first_name, a.last_name
from film as fl
    INNER JOIN film_actor fa ON fl.film_id = fa.film_id
        INNER JOIN actor a on a.actor_id = fa.actor_id
where fl.title = 'ACADEMY DINOSAUR';

select fl.title, i.inventory_id
from film fl
full outer join inventory i ON fl.film_id = i.film_id;

select  fl.title, cs.first_name, cs.last_name
from film fl
cross join customer cs;

-- imię i nazwisko fanów komedii

select  distinct c.first_name, c.last_name
from category ct
inner join public.film_category fc on ct.category_id = fc.category_id
inner join public.film f on f.film_id = fc.film_id
inner join public.inventory i on f.film_id = i.film_id
inner join public.rental r on i.inventory_id = r.inventory_id
inner join public.customer c on c.customer_id = r.customer_id
where  ct.name = 'Drama';