use sakila;

-- 1
SELECT payment_id, customer_id, amount, payment_date
FROM payment
WHERE customer_id <> 5 and (amount >= 8 or date(payment_date) = 23/08/2005)
LIMIT 25;

-- 2
SELECT payment_id, customer_id, amount, payment_date
FROM payment
WHERE customer_id = 5 and (amount >= 6 and date(payment_date) <> 19/06/2005)
LIMIT 5;

-- 3
SELECT *
FROM payment
WHERE amount IN (5.98, 7.98, 9.98);

-- 4
SELECT first_name, last_name
FROM customer
WHERE last_name LIKE '_A%W%';



-- 5
SELECT title, rating, rental_rate
FROM film
WHERE rating LIKE '%G' AND rental_rate = 0.99;

-- 6
SELECT title, rating, length
FROM film
WHERE length >
			(SELECT length from film where title = 'traffic hobbit')
ORDER BY title DESC;

