--1
SELECT AVG(speed) FROM pc;

--2
SELECT AVG(l.screen) AS Screen, p.maker
FROM laptop AS l JOIN product AS p ON l.model = p.model
GROUP BY maker;


--3
SELECT AVG(speed) AS Speed
FROM laptop
WHERE price >= 1000

--4
SELECT AVG(price) AS price, hd
FROM laptop
GROUP BY hd;


--5
SELECT AVG(price) AS price, speed
FROM pc
WHERE speed > 500
GROUP BY speed;


--6
SELECT AVG(pc.price) AS price, p.maker
FROM pc JOIN product AS p ON pc.model = p.model
WHERE maker = "A"
GROUP BY maker;


--7
SELECT AVG(price) AS price
FROM (SELECT pc.price AS price FROM product AS p 
LEFT JOIN pc ON pc.model = p.model
WHERE p.maker = "B"
UNION SELECT l.price AS PRICE FROM product AS p 
LEFT JOIN  laptop AS l ON l.model = p.model
WHERE p.maker = "B");


--8
SELECT COUNT(pc.model) AS pc_count, p.maker
FROM pc JOIN product AS p ON pc.model = p.model
GROUP BY maker
HAVING COUNT(pc.model) >= 3;


--9
SELECT MAX(avg_price) AS price, p_maker AS maker
FROM (SELECT AVG(pc.price) AS avg_price, p.maker AS p_maker
	FROM  pc JOIN product AS p ON pc.model = p.model
	GROUP BY maker);


--10
SELECT AVG(pc.ram) AS ram
FROM product AS p 
LEFT JOIN pc ON pc.model = p.model
LEFT JOIN printer AS pr ON pr.model = pc.model;








