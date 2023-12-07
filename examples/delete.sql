create table if not exists actor_sample (
    actor_id SERIAL,
    first_name VARCHAR(45) NOT NULL,
    last_name VARCHAR(45) NOT NULL,
    last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (actor_id)
);

insert into actor_sample (first_name, last_name)
select first_name, last_name
from actor;

select *
from actor_sample;

delete
from actor_sample
where first_name = 'ED';

select *
from film;

delete
from actor_sample
where actor_id in (select actor_id
                     from film_actor
                    where film_id in (select film_id
                                      from film
                                      where title = 'ACADEMY DINOSAUR'));

drop table actor_sample;


