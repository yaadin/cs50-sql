-- In 12.sql, write a SQL query to list the titles
--  of all movies in which both Johnny Depp and Helena Bonham Carter starred




select title from movies, people, stars
where movies.id = stars.movie_id
and stars.person_id = people.id
and people.name = "Johnny Depp"
and movies.id in
(select movies.id from movies, people, stars
where movies.id = stars.movie_id
and stars.person_id = people.id
and people.name = "Helena Bonham Carter")




