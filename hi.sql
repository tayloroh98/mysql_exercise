USE sakila;
-- PROBLEM 1
SELECT actor_id, first_name, last_name
FROM actor
ORDER BY last_name, first_name;

-- PROBLEM 2
SELECT actor_id, first_name, last_name
FROM actor
WHERE last_name = 'WILLIAMS' or last_name = 'DAVIS';

-- PROBLEM 3
SELECT DISTINCT customer_id, rental_date
FROM rental
WHERE date(rental_date)= '2005-07-05';

-- PROBLEM 4
SELECT first_name, last_name
FROM customer
WHERE NOT (first_name AND last_name) LIKE 'A%';

-- PROBLEM 5
SELECT customer_id, amount
FROM payment
WHERE amount BETWEEN 5 and 7
ORDER BY customer_id
LIMIT 25;

-- PROBLEM 6
SELECT title
FROM film
WHERE title BETWEEN 'DO%' AND 'IT%';

-- PROBLEM 7

SELECT DISTINCT customer_id
FROM rental
WHERE return_date is null
ORDER BY customer_id;
