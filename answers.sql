-- Problem 1
SELECT * FROM salespeople;

-- Problem 2
SELECT * FROM salespeople WHERE region = 'Northwest';

-- Problem 3
SELECT email FROM salespeople WHERE region = 'Southwest';

-- Problem 4
SELECT givenname, surname, email FROM Salespeople WHERE region = 'Northwest';

-- Problem 5
SELECT common_name FROM melons WHERE price > 5.00

-- Problem 6
SELECT melon_type, common_name FROM melons WHERE price > 5.00 AND melon_type = 'Watermelon';

-- Problem 7
SELECT common_name FROM melons WHERE common_name LIKE'C%';

-- Problem 8
SELECT common_name FROM melons WHERE common_name LIKE '%Golden%';

-- Problem 9
SELECT DISTINCT region FROM salespeople;

-- Problem 10
SELECT email FROM salespeople WHERE region = 'Northwest' OR region = 'Southwest';

-- Problem 11
SELECT email FROM salespeople WHERE region IN ('Northwest', 'Southwest');

-- Problem 12
SELECT email, givenname, surname FROM salespeople WHERE region IN ('Northwest', 'Southwest') AND surname LIKE'M%';

-- Problem 13
SELECT  melon_type,common_name, price, price*0.735693 FROM melons;

-- Problem 14
select count(*) from customers;

-- Problem 15
select count(*) from orders where shipto_state = 'CA';

-- Problem 16
select sum(order_total) from orders;

-- Problem 17
select avg(order_total) from orders;

-- Problem 18
select min(order_total) from orders;

-- Problem 19
select id from customers where email = 'phyllis@demizz.edu';

-- Problem 20
select id, status, order_total from orders where customer_id = '100';

-- Problem 21
select id, status, order_total from orders where customer_id = (select id from customers where email = 'phyllis@demizz.edu');

-- Problem 22
select orders.id, status, order_total from orders join customers on (customers.id =customer_id) where email = 'phyllis@demizz.edu';

-- Problem 23
select * from order_items WHERE order_id = 2725;

-- Problem 24
select common_name, melon_type, quantity, unit_price, total_price from melons JOIN order_items on (melons.id = order_items.melon_id) where order_id = '2725';

-- Problem 25
select sum(order_total) from orders WHERE salesperson_id is NULL;

-- Problem 26
select givenname, surname, sum(orders.order_total), sum(orders.order_total)*0.15 from salespeople LEFT JOIN orders ON(orders.salesperson_id = salespeople.id) GROUP BY salespeople.id;

