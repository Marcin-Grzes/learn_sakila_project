insert into actor_sample (first_name, last_name)
select first_name, last_name
from actor;

select *
from actor_sample;

update actor_sample
set first_name = 'Lech'
where actor_id = 1;

select * from actor_sample
order by actor_id;

update actor_sample
set first_name = 'Janusz', last_name = 'Kowalski'
where actor_id = 2;

update actor_sample
set first_name = 'Jarosław'
where actor_id in (1, 3, 6);

select actor_id
from film_actor
where film_id = 1;

select *
from film_actor;

update actor_sample
set first_name = 'Andrzej'
where actor_id in (select  actor_id
                   from film_actor
                   where film_id =1);

select * from film;

drop table  actor_sample