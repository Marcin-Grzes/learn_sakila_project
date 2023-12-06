select * from actor;

select last_name, first_name from actor;

SELECT *
FROM actor
ORDER BY first_name;

SELECT *
FROM actor
ORDER BY first_name desc;
-- sortowanie po dwóch kolumnach
SELECT *
FROM actor
ORDER BY last_name, first_name DESC;

SELECT *
FROM actor
WHERE actor_id > 100;


SELECT last_name, first_name
FROM actor
WHERE actor_id > 100;

select rental_date AS RentalDate, inventory_id AS FilmListID
from rental;

SELECT *
FROM film;

select replacement_cost - rental_rate as CostDiff,
       film_id,
       length / 60 AS TimeinHour
from film;

SELECT rental_rate                 AS RentalRate,
       rental_rate + 3 * 4 - 1     AS Result1,
       (rental_rate + 3) * 4 - 1   AS Result2,
       (rental_rate + 3) * (4 - 1) AS Result3,
       rental_rate + (3 * 4) - 1   AS Result4
FROM film;

SELECT *
FROM payment;

SELECT amount,
       round(amount) AS AMNT,
       round(amount) AS Amnt1,
       ceiling(amount) AS amnt2
from payment;

select concat(first_name, ' ', last_name)
from actor;

select concat(left(first_name, 1), '.', left(last_name, 1), '.')
from actor;

SELECT  actor_id, first_name,last_name
FROM actor
WHERE actor_id = 100;

SELECT  actor_id, first_name,last_name
FROM actor
WHERE first_name = 'KENNETH' AND actor_id < 100;

SELECT  actor_id, first_name,last_name
FROM actor
WHERE first_name = 'KENNETH' AND actor_id < 100 AND last_name = 'TORN';

SELECT  actor_id, first_name,last_name
FROM actor
WHERE first_name = 'KENNETH' AND  actor_id < 100 OR last_name = 'TEMPLE';

select  actor_id
from actor
order by actor_id
limit  5 offset  10;




