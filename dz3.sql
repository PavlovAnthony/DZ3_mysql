use dz3;

CREATE TABLE salespeople (
id INT PRIMARY KEY AUTO_INCREMENT ,
snum int,
sname VARCHAR(45),
city VARCHAR(45),
comm int
);

-- Наполнение данными
INSERT INTO salespeople(snum, sname, city, comm)
VALUES
(1001, 'Peel', 'London', 12),
(1002, 'Serres', 'San Jose', 13),
(1004, 'Motika', 'London', 11),
(1007, 'Rifkin', 'Barcelona', 15),
(1003, 'Axelrod', 'New York', 10)
;
select * from salespeople;
-- 1
select city, sname, snum, comm from salespeople;
-- 3
select distinct(snum) from salespeople;

CREATE TABLE customers (
id INT PRIMARY KEY AUTO_INCREMENT ,
cnum int,
cname VARCHAR(45),
city VARCHAR(45),
rating int,
snum int
);

-- Наполнение данными
INSERT INTO customers(cnum, cname, city, rating, snum)
VALUES
(2001, 'Hoffman', 'London', 100, 1001),
(2002, 'Giovanni', 'Rome', 200, 1003),
(2003, 'Liu', 'San Jose', 200, 1002),
(2004, 'Grass', 'Berlin', 300, 1002),
(2006, 'Clemens', 'London', 100, 1001),
(2008, 'Cisneros', 'San Jose', 300, 1007),
(2007, 'Pereira', 'Rome', 100, 1004)
;
-- select * from customers;
-- 2
select cname, rating from customers where city='San Jose';
-- 7
select * from customers
where rating>100 and city <>'Rome';

-- ----------------------------------
CREATE TABLE orders (
id INT PRIMARY KEY AUTO_INCREMENT ,
onum int,
amt float,
odate date,
cnum int,
snum int
);

-- Наполнение данными
INSERT INTO orders(onum, amt, odate, cnum, snum)
VALUES
(3001, 18.69, str_to_date("10/03/1990",'%d/%m/%Y'), 2008, 1007),
(3003, 767.19, STR_TO_DATE("10/03/1990", '%d/%m/%Y') , 2001, 1001),
(3002, 1900.10, STR_TO_DATE("10/03/1990",'%d/%m/%Y'), 2007, 1004),
(3005, 5160.45, STR_TO_DATE("10/03/1990",'%d/%m/%Y'), 2003, 1002),
(3006, 1098.16, STR_TO_DATE("10/03/1990",'%d/%m/%Y'), 2008, 1007),
(3009, 1713.23, STR_TO_DATE("10/04/1990",'%d/%m/%Y'), 2002, 1003),
(3007, 75.75, STR_TO_DATE("10/04/1990",'%d/%m/%Y') , 2004, 1002),
(3008, 4723.00, STR_TO_DATE("10/05/1990",'%d/%m/%Y') , 2006, 1001),
(3010, 1309.95, STR_TO_DATE("10/06/1990",'%d/%m/%Y') , 2004, 1002),
(3011, 9891.88, STR_TO_DATE("10/06/1990",'%d/%m/%Y') , 2006, 1001)
;
select amt from orders;

-- 5
select * from orders where amt>=1000;
-- 6
SELECT * FROM orders
order by amt limit 1;

CREATE TABLE staff (
id INT AUTO_INCREMENT PRIMARY KEY,
firstname VARCHAR(45),
lastname VARCHAR(45),
post VARCHAR(100),
seniority INT,
salary INT,
age INT
);

-- Наполнение данными
INSERT INTO staff (firstname, lastname, post, seniority, salary, age)
VALUES
('Вася', 'Петров', 'Начальник', '40', 100000, 60),
('Петр', 'Власов', 'Начальник', '8', 70000, 30),
('Катя', 'Катина', 'Инженер', '2', 70000, 25),
('Саша', 'Сасин', 'Инженер', '12', 50000, 35),
('Иван', 'Иванов', 'Рабочий', '40', 30000, 59),
('Петр', 'Петров', 'Рабочий', '20', 25000, 40),
('Сидр', 'Сидоров', 'Рабочий', '10', 20000, 35),
('Антон', 'Антонов', 'Рабочий', '8', 19000, 28),
('Юрий', 'Юрков', 'Рабочий', '5', 15000, 25),
('Максим', 'Максимов', 'Рабочий', '2', 11000, 22),
('Юрий', 'Галкин', 'Рабочий', '3', 12000, 24),
('Людмила', 'Маркина', 'Уборщик', '10', 10000, 49);


-- 8
select * from staff order by salary;
-- 9
select * from staff order by salary desc;

-- 10 


select  post,  sum(salary) as sum
from staff
group by post
having sum >=100000;




