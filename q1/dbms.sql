create database movie;
use movie;
CREATE TABLE acts(
    actor varchar(255)NOT NULL,
    title varchar(255)NOT NULL,
     FOREIGN KEY (actor) REFERENCES actors(actor),
    FOREIGN KEY (title) REFERENCES movies(title)
    
    );
      INSERT INTO acts (actor,title)
VALUES ('cage','raising arizona'),
('maguire','spiderman'),
('maguire','wonder boys'),
('mcdarmand','fargo'),
('mcdarmand','raising arizona'),
('mcdarmand','wonder boys');
    
    select * from acts;
CREATE TABLE actors(
    actor varchar(255)NOT NULL,
    ayear varchar(255)NOT NULL,
    
   primary key(actor)
    );
    INSERT INTO actors (actor,ayear)
VALUES ('cage',1964),
('hanks',1956),
('maguire',1975),
('mcdarmand',1957);


CREATE TABLE movies(
    title varchar(255)NOT NULL,
    director varchar(255)NOT NULL,
    myear varchar(255)NOT NULL,
    rating varchar(255)NOT NULL,
    primary key(title),
    FOREIGN KEY (director) REFERENCES directors(director)
    );
    INSERT INTO movies (title,director,myear,rating)
VALUES ('fargo','coen',1996,8.2),
('raising arizona','coen',1987,7.6),
('spiderman','raimi',2002,7.4),
('wonder boys','hanson',2000,7.6);

CREATE TABLE directors(
    director varchar(255)NOT NULL,
    dyear varchar(255)NOT NULL,
    primary key(director)
    );
INSERT INTO directors (director, dyear)
VALUES ('coen',1954),
('hanson',1945),
('raimi',1959);
 
 select title from  movies where (myear>1997);
 SELECT title FROM movies
WHERE myear>1997 AND director='hanson';
select title,rating from movies;

SELECT title FROM acts WHERE actor = 'mcdarmand'AND title in (select title from movies where director='coen');
SELECT actor as 'Actor' FROM Actors
UNION
SELECT director as 'Actor' FROM Directors;


 
