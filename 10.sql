-- In 10.sql, write a SQL query to list the names of all people who have directed a
--  movie that received a rating of at least 9.0.

select distinct name from people, directors, ratings
where directors.person_id = people.id
and directors.movie_id = ratings.movie_id
and rating >= 9.0

