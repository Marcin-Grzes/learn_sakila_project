create table if not exists actor_sample (
    actor_id SERIAL,
    first_name VARCHAR(45) NOT NULL,
    last_name VARCHAR(45) NOT NULL,
    last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (actor_id)
);

insert into actor_sample (first_name, last_name) values ('Jarosaw', 'K');

select *
from actor_sample;

insert into actor_sample (first_name, last_name) values ('Daniel', 'W');

insert into actor_sample(first_name, last_name) values ('Antoni', 'Macierewicz'),
                                                       ('Mateusz', 'M'),
                                                       ('Janusz', 'K');

insert into actor_sample (first_name, last_name)
select first_name, last_name
from actor
where first_name = 'Nick';

select *
from actor_sample

select first_name, last_name
from actor
where first_name = 'Nick';