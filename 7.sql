-- In 7.sql, write a SQL query to list all movies released in 2010 and their ratings
-- REATE TABLE movies (
--                     id INTEGER,
--                     title TEXT NOT NULL,
--                     year NUMERIC,
--                     PRIMARY KEY(id)
--                 );
-- CREATE TABLE stars (
--                 movie_id INTEGER NOT NULL,
--                 person_id INTEGER NOT NULL,
--                 FOREIGN KEY(movie_id) REFERENCES movies(id),
--                 FOREIGN KEY(person_id) REFERENCES people(id)
--             );
-- CREATE TABLE directors (
--                 movie_id INTEGER NOT NULL,
--                 person_id INTEGER NOT NULL,
--                 FOREIGN KEY(movie_id) REFERENCES movies(id),
--                 FOREIGN KEY(person_id) REFERENCES people(id)
--             );
-- CREATE TABLE ratings (
--                 movie_id INTEGER NOT NULL,
--                 rating REAL NOT NULL,
--                 votes INTEGER NOT NULL,
--                 FOREIGN KEY(movie_id) REFERENCES movies(id)
--             );
-- CREATE TABLE people (
--                 id INTEGER,
--                 name TEXT NOT NULL,
--                 birth NUMERIC,
--                 PRIMARY KEY(id)
--             );


-- In 7.sql, write a SQL query to list all movies released in 2010 and their ratings

-- select title,rating from ratings
-- join movies on movies.id = ratings.movie_id
-- where year = 2010
-- order by rating desc


select title, rating from movies, ratings
where movies.id = ratings.movie_id
and year = 2010
order by rating desc, title asc
