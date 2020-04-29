CREATE TABLE Languages (
	id Integer PRIMARY KEY NOT NULL,
  	language Varchar(20) NOT NULL,
  	answer VARCHAR(30),
  	answered INTEGER DEFAULT 0,
 	guide VARCHAR(255)
);

INSERT Into Languages (id, language, answer, answered, guide)
VALUES (1, "Python", "google", 0, "A folder named Python was created. Go there and fight with program.py!");

INSERT Into Languages (id, language, answer, answered, guide)
VALUES (2, "Go", "200 OK", 0, "A folder named Go was created. Go there and try to make Google Go run.");

INSERT Into Languages (id, language, answer, answered, guide)
VALUES (3, "Java", "object oriented programming", 0, "A folder named Java was created. Can you handle the class?");

INSERT Into Languages (id, language, answer, answered, guide)
VALUES (4, "Haskell", "Lambda", 0, "Something pure has landed. Go to Haskell folder and see it!");

INSERT Into Languages (id, language, answer, answered, guide)
VALUES (5, "C#", "NDI=", 0, "Do you see sharp? Go to the C# folder and check out.");

INSERT Into Languages (id, language, answer, guide)
VALUES (6, "Ruby", "https://www.ruby-lang.org/bg/", "Ruby, ruby, rubyyy, aaahaaaahaa! (music). Go to Ruby folder!");

INSERT Into Languages (id, language, answer, guide)
VALUES (7, "C++", "header files", "Here be dragons! It's C++ time. Go to the C++ folder.");

INSERT Into Languages (id, language, answer, guide)
VALUES (8, "JavaScript", "Douglas Crockford", "NodeJS time. Go to JavaScript folder and Node your way!");

ALTER TABLE Languages
	add Rating INTEGER DEFAULT 1 check (Rating between 1 and 9);

UPDATE Languages
	set answered = 1
    WHERE language = "Python" OR Language = "Go";

UPDATE Languages
	set answered = 2
    WHERE language LIKE "C%";

SELECT *
	from Languages
    where answer = "200 OK" or answer = "Lambda";
/*
SELECT *
	from Languages
    WHERE answered > 0;

SELECT *
	from Languages;
*/