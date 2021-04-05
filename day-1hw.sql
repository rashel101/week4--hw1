-- Question 1: how manny actors are their with the last name 'Wahlberg'?
-- answer: 2
SELECT last_name
FROM actor
WHERE last_name LIKE 'Wahlberg';

--Question 2:How many payments were made between $3.99 and $5.99?
--answer: 4607
SELECT customer_id, amount
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99

--Question 3: What film does the store have the most of? (search in inventory)
--ANSWER:
SELECT *
from film, inventory
ORDER BY inventory_id DESC;
SELECT inventory_id 
from inventory

-- Questipon 4:How many customers have the last name ‘William’?
--Answer:1
-- for some reason the example in #1 for searching a name wasnt woriking in this case.
SELECT first_name, last_name
FROM customer
WHERE last_name LIKE 'W%';

-- Question 5:What store employee (get the id) sold the most rentals?
-- Answer:2
-- there isnt a sold option so i went off the id 
SELECT *
from staff;
SELECT staff_id, first_name, last_name
from staff;

--Question 6:How many different district names are there?
-- Answer:603
SELECT *
from address;
SELECT district
from address;

--Question 7:What film has the most actors in it? (use film_actor table and get film_id)
--Answer: could be 1000 but confused by question
SELECT *
FROM film_actor;

SELECT film_id
FROM film_actor
GROUP BY film_id
ORDER BY film_id DESC;

-- Question 8: From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
--Answer:21
SELECT *
from customer;
SELECT first_name, last_name
FROM customer
WHERE last_name LIKE '__%es';

-- Question 9:How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
--with ids between 380 and 430? (use group by and having > 250)

--Answer:
SELECT *
FROM payment;

SELECT COUNT(rental_id)
FROM payment
WHERE customer_id BETWEEN 380 AND 430
HAVING COUNT (rental_id)> 250;

--Question 10:Within the film table, how many rating categories are there? And what rating has the most
--movies total?
-- Answer: ther are 5 categories and the ratings withthe most movies is NC-17
SELECT *
FROM film;

SELECT title, rating
from film
ORDER by rating DESC;
