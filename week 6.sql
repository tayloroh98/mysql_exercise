use sakila;

-- 1
SELECT first_name, last_name, SUBSTRING(address,LOCATE(' ', address)+1)
FROM customer c inner join address a
		on c.address_id = a.address_id
ORDER BY SUBSTRING(address,LOCATE(' ', address)+1);

-- 2
SELECT ceiling(amount) FROM payment;
SELECT floor(amount) FROM payment;
SELECT TRUNCATE(amount, 1) from payment;
SELECT TRUNCATE(amount, -1) from payment;

-- 3
SELECT * from rental;

SELECT DISTINCT title, DATE_FORMAT(rental_date, '%M') AS 'Rented Month'
FROM film f INNER JOIN inventory i
		ON f.film_id = i.film_id
        INNER JOIN rental r
        ON i.inventory_id = r.inventory_id
WHERE DATE_FORMAT(rental_date, '%M') = 'May';

-- 4

SELECT first_name, last_name, title, rental_date, return_date, datediff(return_date, rental_date) as "rental_period"
FROM film f INNER JOIN inventory i
		ON f.film_id = i.film_id
        INNER JOIN rental r
        ON i.inventory_id = r.inventory_id
        INNER JOIN customer c
        ON r.customer_id = c.customer_id
WHERE title = "CURTAIN VIDEOTAPE"
ORDER BY datediff(return_date, rental_date) DESC;

-- 5

SELECT floor(datediff(CURDATE(),STR_TO_DATE("Friday, 21st September, 1838" , "Friday, %D %M, %Y"))/365) as "Remaining days",
		datediff(CURDATE(),STR_TO_DATE("Friday, 21st September, 1838" , "Friday, %D %M, %Y"))%365 as "Full year";
		


