--1
SELECT address FROM STUDIO WHERE name="MGM";

--2
SELECT birthdate FROM MOVIESTAR WHERE name = "Kim Basinger";

--3
SELECT name FROM MOVIEEXEC where networth > 10000000;

--4
SELECT name FROM MOVIESTAR WHERE gender = "M" or address = "Prefect Rd.";

--5
INSERT into MOVIESTAR (name, address, gender, birthdate)
VALUES ("Zahari Baharov", "nz", "M", "1977-07-07");

--6
DELETE FROM STUDIO WHERE address like "%5%";

--7
UPDATE MOVIE set studioname = "Fox" WHERE title like "%star%";

--2.1
SELECT starname from MOVIE join STARSIN on title = movietitle WHERE title = "Terms of Endearment";

--2.2
SELECT starname from MOVIE join STARSIN on title = movietitle WHERE studioname = "MGM" and year = 1995

--2.3
ALTER table STUDIO add CEO VARCHAR(40);
update STUDIO set ceo = "nz1" where name = "Disney";
update STUDIO set ceo = "nz2" where name = "Fox";
update STUDIO set ceo = "nz3" where name = "MGM";
update STUDIO set ceo = "nz4" where name = "Paramount";
update STUDIO set ceo = "nz5" where name = "USA Entertainm.";
update STUDIO set ceo = "nz6" where name = "Warner Bros";
select ceo from STUDIO where name = "MGM";