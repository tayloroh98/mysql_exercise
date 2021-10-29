USE sakila;
-- 1
SELECT first_name, last_name, address, address2, city
FROM customer c INNER JOIN address a
	ON c.address_id = a.address_id
    INNER JOIN city ci
    ON a.city_id = ci.city_id
WHERE district = "California";

-- 2
SELECT title, first_name, last_name
FROM film f INNER JOIN film_actor fa
	ON f.film_id = fa.film_id
    INNER JOIN actor a
    ON fa.actor_id = a.actor_id
WHERE first_name LIKE "%NICK%";


-- 3
SELECT a1.first_name, a1.last_name, a2.first_name, a2.last_name
FROM actor a1 INNER JOIN actor a2
	ON a1.first_name = a2.first_name
	AND a1.actor_id <> a2.actor_id;

-- 4
SELECT a1.address, a2.address, city
FROM address a1 INNER JOIN city c
	ON a1.city_id = c.city_id
    INNER JOIN address a2
    ON a1.address_id > a2.address_id
WHERE a1.city_id = a2.city_id
ORDER BY city;

-- 5
SELECT title, length
FROM film f INNER JOIN film_actor fa
	ON f.film_id = fa.film_id
    INNER JOIN actor a
    ON fa.actor_id = a.actor_id
WHERE first_name = "JANE" and last_name = "JACKMAN"
	 AND length BETWEEN 90 and 120;


-- 6
SELECT DISTINCT title
FROM film f INNER JOIN inventory i
	ON f.film_id = i.film_id
    INNER JOIN film_actor fa
	ON f.film_id = fa.film_id
    INNER JOIN actor a
    ON fa.actor_id = a.actor_id
WHERE i.store_id = 2 AND first_name = "EMILY" AND last_name = "DEE";