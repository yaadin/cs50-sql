-- In 9.sql, write a SQL query to list the names of all people who starred in a movie released in 2004, ordered by birth year.

select count(distinct name) from people, stars, movies
where people.id = stars.person_id
and stars.movie_id = movies.id
and year = 2004
order by birth


select distinct name
from people join stars on people.id = stars.person_id
Join movies on movies.id = stars.movie_id
where year = 2004
order by birth;