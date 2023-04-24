use sakila;
-- 1] which actors have the first name 'scarlett'

select first_name
from actor
where first_name like 'scarlett';

-- 2] which actor have the last name 'johansson'
select last_name 
from actor 
where last_name like 'johansson';

-- 3] how many distinct actors last names are there ?

select count(distinct last_name)
from actor;

-- 4] which last name are not repeted?

select distinct last_name 
from actor;

-- 5] which last name appear more than once?

select last_name,count(*)
from actor
group by last_name
having count(last_name) >1;

-- 6] which actor has appeard in most films?

select count(first_name),first_name
from actor_info
group by first_name;

-- 7] what is the average lenght of all the films in the sakila DB?

select avg(length) as avg
from film;

-- 8] what is the average lenght of films by category ?

select category,avg(length)as avgcategory
from film_list
group by category;

-- 9] which films category are long?

select title, length
from film
where length >( select avg(length)