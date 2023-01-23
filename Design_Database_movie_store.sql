/* Khan Academy Project: Design a store database */

/* Create your own store! Your store should sell one type of things, like clothing or bikes, whatever you want your store to specialize in. */ 
/* You should have a table for all the items in your store, and at least 5 columns for the kind of data you think you'd need to store. */
/* You should sell at least 15 items, and use select statements to order your items by price and show at least one statistic about the items. */


CREATE TABLE movie_store (id INTEGER PRIMARY KEY, title TEXT, category TEXT, rating_out_of_10 INTEGER, price NUMERIC);

INSERT INTO movie_store VALUES (1, "Up", "Family", 8, 15.50);
INSERT INTO movie_store VALUES (2, "Nope", "Thriller", 9, 17.00); 
INSERT INTO movie_store VALUES (3, "The Notebook", "Romance", 8, 16.50);
INSERT INTO movie_store VALUES (4, "Mean Girls", "Comedy", 10, 16.50);
INSERT INTO movie_store VALUES (5, "Spider-man: Homecoming", "Action", 9, 16.00);
INSERT INTO movie_store VALUES (6, "Grease", "Musical", 8, 15.50);
INSERT INTO movie_store VALUES (7, "Free Guy", "Action", 7, 16.50);
INSERT INTO movie_store VALUES (8, "The Fallout", "Drama", 7, 17.00);
INSERT INTO movie_store VALUES (9, "Dead Poets Society", "Drama", 8, 16.50);
INSERT INTO movie_store VALUES (10, "Coco", "Family", 9, 15.50);
INSERT INTO movie_store VALUES (11, "Clueless", "Romance", 7, 16.00);
INSERT INTO movie_store VALUES (12, "Sixteen Candles", "Comedy", 7, 16.00);
INSERT INTO movie_store VALUES (13, "Footloose", "Dance", 6, 15.50);
INSERT INTO movie_store VALUES (14, "Willy Wonka and the Chocolate Factory", "Family", 7, 15.00);
INSERT INTO movie_store VALUES (15, "Encanto", "Family", 7, 15.50);
INSERT INTO movie_store VALUES (16, "Frozen", "Family", 7, 15.50);
INSERT INTO movie_store VALUES (17, "The Avengers", "Action", 8, 16.50);
INSERT INTO movie_store VALUES (18, "Ticket to Paradise", "Romance", 6, 16.50);
INSERT INTO movie_store VALUES (19, "Hairspray", "Musical", 7, 16.00);
INSERT INTO movie_store VALUES (20, "Pitch Perfect", "Comedy", 7, 17.00);

SELECT * FROM movie_store;

SELECT sum(price) FROM movie_store;

SELECT title, price FROM movie_store ORDER BY price DESC;

SELECT category, avg(rating_out_of_10) FROM movie_store GROUP BY category ORDER BY avg(rating_out_of_10) DESC;



