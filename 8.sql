-- In 8.sql, write a SQL query to list the names of all people who starred in Toy Story.

select name from people, stars, movies
where people.id = stars.person_id
and stars.movie_id = movies.id
and title = "Toy Story";