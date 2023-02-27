\c nc_flix

\echo '\n 1. Here are the number of films in stock for each genre:'

SELECT genre_name, COUNT(genre_name) AS number_in_stock
FROM stock
JOIN movies_genres
ON movies_genres.movie_id = stock.movie_id
JOIN genres
ON genres.genre_id = movies_genres.genre_id
GROUP BY genre_name;


\echo '\n 2. Here is the average rating for films in stock in Newcastle:'

SELECT AVG(ROUND(rating))  AS average_rating_newcastle
FROM movies
JOIN stock
ON movies.movie_id = stock.movie_id
JOIN stores
ON stores.store_id = stock.store_id
WHERE city = 'Newcastle';


\echo '\n 3. Here are all the films made in 90s with above average rating:'


\echo '\n 4. Here is the number of copies of the top rated film of the 5 most recently released films we have in stock across all stores:'


\echo '\n 5. These are the locations where our customers live which dont have stores:'


\echo '\n 6. These are all the locations which our business has influence over'


\echo '\n 7a. This store has the highest quantity of stock:'


\echo '\n 7b. ...and this is the most abundant genre in that store:'
