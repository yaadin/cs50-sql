-- In 11.sql, write a SQL query to list the titles of the five highest rated movies 
-- (in order) that Chadwick Boseman starred in, starting with the highest rate

select title,rating from movies, ratings, people, stars
where movies.id = ratings.movie_id
and movies.id = stars.movie_id
and stars.person_id = people.id
and people.name = "Chadwick Boseman"
order by rating DESC
limit 5



-- SELECT movies.title from people
-- JOIN stars ON people.id = stars.person_id
-- JOIN movies ON stars.movie_id = movies.id
-- JOIN ratings on movies.id = ratings.movie_id
-- WHERE people.name = "Chadwick Boseman"
-- ORDER BY rating DESC
-- LIMIT 5;