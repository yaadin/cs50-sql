-- In 13.sql, write a SQL query to list the names of all people 
-- who starred in a movie in which Kevin Bacon also starred.


select distinct name from people, stars
where stars.person_id = people.id
and stars.person_id in
(select distinct person_id from stars, movies
where movies.id = stars.movie_id
and movies.title in
(select title from movies, people, stars
where movies.id = stars.movie_id
and stars.person_id = people.id
and people.name = "Kevin Bacon"
and people.birth = "1958"))



-- SELECT distinct(name) FROM people
-- JOIN stars ON people.id = stars.person_id
-- JOIN movies ON stars.movie_id = movies.id
-- WHERE movies.title IN(SELECT distinct(movies.title) FROM people
-- JOIN stars ON people.id = stars.person_id
-- JOIN movies ON stars.movie_id = movies.id
-- WHERE people.name = "Kevin Bacon" AND people.birth = 1958) AND people.name != "Kevin Bacon";