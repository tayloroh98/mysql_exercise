USE sakila;

-- 1
SELECT COUNT(payment_id) from payment;

-- 2
SELECT first_name, last_name, COUNT(payment_id), SUM(amount)
FROM payment p JOIN customer c
ON p.customer_id = c.customer_id
GROUP BY p.customer_id
ORDER BY SUM(amount) DESC;

-- 3
SELECT first_name, last_name, COUNT(payment_id), SUM(amount)
FROM payment p JOIN customer c
ON p.customer_id = c.customer_id
GROUP BY p.customer_id
HAVING COUNT(payment_id) >= 40
ORDER BY SUM(amount) DESC;

-- 4
SELECT c.name, AVG(replacement_cost)
FROM film f JOIN film_category fc
ON f.film_id = fc.film_id
JOIN category c
ON fc.category_id = c.category_id
GROUP BY c.name;

-- 5
SELECT LEFT(title,1), COUNT(title)
FROM film
GROUP BY LEFT(title,1);

-- 6
SELECT LEFT(title,1), MAX(length), MIN(length)
FROM film
GROUP BY LEFT(title,1);

-- 7
SELECT name as "category", rating, COUNT(*)
FROM category c 
	join film_category fc
		ON c.category_id = fc.category_id
	JOIN film f 
		ON fc.film_id = f.film_id
GROUP BY category, rating with rollup
ORDER BY category, rating DESC;



