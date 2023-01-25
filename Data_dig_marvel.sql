
/* Put your data in here and query it! */

/* Pick one of those data sets or create a data set like that, and use advanced SELECT queries to discover things about the data. What sort of questions might one have about that data, like if they were using it for an app or a business idea? Here are some ideas:

What are average, max, and min values in the data?
What about those numbers per category in the data (using HAVING)?
What ways are there to group the data values that don’t exist yet (using CASE)?
What interesting ways are there to filter the data (using AND/OR)? */


--- I decided to use the Marvel Characters dataset for this exercise. --- 

/* This was found from: https://gist.github.com/pamelafox/585364b62390ea720858 */

/* Marvel Heroes and Villains
 Based on the website http://marvel.wikia.com/Main_Page
 with popularity data from http://observationdeck.io9.com/something-i-found-marvel-character-popularity-poll-cb-1568108064 
 and power grid data from http://marvel.wikia.com/Power_Grid#Power
 Collected by: https://www.khanacademy.org/profile/Mentrasto/
 */

CREATE TABLE marvels (ID INTEGER PRIMARY KEY,
    name TEXT,
    popularity INTEGER,
    alignment TEXT,
    gender TEXT, 
    height_m NUMERIC,
    weight_kg NUMERIC,
    hometown TEXT,
    intelligence INTEGER,
    strength INTEGER,
    speed INTEGER,
    durability INTEGER,
    energy_Projection INTEGER,
    fighting_Skills INTEGER);
    
INSERT INTO marvels VALUES(1, "Spider Man", 1, "Good", "Male", 1.78, 75.75, "USA", 4, 4, 3, 3, 1, 4); 
INSERT INTO marvels VALUES(2, "Iron Man", 20, "Neutral", "Male", 1.98, 102.58, "USA", 6, 6, 5, 6, 6, 4); 
INSERT INTO marvels VALUES(3, "Hulk", 18, "Neutral", "Male", 2.44, 635.29, "USA", 1, 7, 3, 7, 5, 4); 
INSERT INTO marvels VALUES(4, "Wolverine", 3, "Good", "Male", 1.6, 88.46, "Canada", 2, 4, 2, 4, 1, 7);
INSERT INTO marvels VALUES(5, "Thor", 5, "Good", "Male", 1.98, 290.3, "Asgard", 2, 7, 7, 6, 6, 4);
INSERT INTO marvels VALUES(6, "Green Goblin", 91, "Bad", "Male", 1.93, 174.63, "USA", 4, 4, 3, 4, 3, 3);
INSERT INTO marvels VALUES(7, "Magneto", 11, "Neutral", "Male", 1.88, 86.18, "Germany", 6, 3, 5, 4, 6, 4);
INSERT INTO marvels VALUES(8, "Thanos", 47, "Bad", "Male", 2.01, 446.79, "Titan", 6, 7, 7, 6, 6, 4);
INSERT INTO marvels VALUES(9, "Loki", 32, "Bad", "Male", 1.93, 238.14, "Jotunheim", 5, 5, 7, 6, 6, 3);
INSERT INTO marvels VALUES(10, "Doctor Doom", 19, "Bad", "Male", 2.01, 188.24, "Latveria", 6, 4, 5, 6, 6, 4);
INSERT INTO marvels VALUES(11, "Jean Grey", 8, "Good", "Female", 1.68, 52.16, "USA", 3, 2, 7, 7, 7, 4);
INSERT INTO marvels VALUES(12, "Rogue", 4, "Good", "Female", 1.73, 54.43, "USA", 7, 7, 7, 7, 7, 7);
INSERT INTO marvels VALUES(13, "Storm", 2, "Good", "Female", 1.80, 66, "Kenya", 2, 2, 3, 2, 5, 4);
INSERT INTO marvels VALUES(14, "Nightcrawler", 6, "Good", "Male", 1.75, 73, "Germany", 3, 2, 7, 2, 1, 3);
INSERT INTO marvels VALUES(15, "Gambit", 7, "Good", "Male", 1.88, 81, "EUA", 2, 2, 2, 2, 2, 4);
INSERT INTO marvels VALUES(16, "Captain America", 9, "Good", "Male", 1.88, 108, "EUA", 3, 3, 2, 3, 1, 6);
INSERT INTO marvels VALUES(17, "Cyclops", 10, "Good", "Male", 1.90, 88, "EUA", 3, 2, 2, 2, 5, 4);
INSERT INTO marvels VALUES(18, "Emma Frost", 12, "Neutral", "Female", 1.78, 65, "EUA", 4, 4, 2, 5, 5, 3);
INSERT INTO marvels VALUES(19, "Kitty Pryde", 13, "Good", "Female", 1.68, 50, "EUA", 4, 2, 2, 3, 1, 5);
INSERT INTO marvels VALUES(20, "Daredevil", 14, "Good", "Male", 1.83, 91, "EUA", 3, 3, 2, 2, 4, 5);
INSERT INTO marvels VALUES(21, "Punisher", 50, "Neutral", "Male", 1.85, 91, "EUA", 3, 3, 2, 2, 1, 6);
INSERT INTO marvels VALUES(22, "Silver Surfer", 33, "Good", "Male", 1.93, 102, "Zenn-La", 3, 7, 7, 6, 7, 2);
INSERT INTO marvels VALUES(23, "Ghost Rider", 86, "Good", "Male", 1.88, 99, "EUA", 2, 4, 3, 5, 4, 2);
INSERT INTO marvels VALUES(24, "Venon", 78, "Neutral", "Male", 1.90, 118, "EUA", 3, 4, 2, 6, 1, 4);
INSERT INTO marvels VALUES(25, "Juggernaut", 76, "Neutral", "Male", 2.87, 862, "EUA", 2, 7, 2, 7, 1, 4);
INSERT INTO marvels VALUES(26, "Professor X", 58, "Good", "Male", 1.83, 86, "EUA", 5, 2, 2, 2, 5, 3);



SELECT * FROM marvels;
/* Note that each marvel character is only listed once*/

--- Question 1:---
/* What are average, max, and min values in the data? */

SELECT AVG(popularity) AS avg_pop FROM marvels;
/* The average popularity score is 27.43 */

SELECT name, MIN(popularity) AS min_pop FROM marvels;
/* Spider Man has a popularity of 1 (he is ranked 1st, as in most popular). */

SELECT name, MAX(popularity) AS max_pop FROM marvels;
/* Green Goblin has a popularity of 91 *he is ranked 91st, as in the least popular). */


/* What about the max, min, average height and weight of all the characters? */

SELECT AVG(height_m) AS avg_height, AVG(weight_kg) AS avg_weight FROM marvels;
/* The average height and weight of all the characters is 1.91 meters, and 169.7 kg. */

SELECT name, MIN(height_m) AS min_height FROM marvels;
/* Wolverine is the shortest character, at 1.6 meters. */
SELECT name, MIN(weight_kg) AS min_weight FROM marvels;
/* Kitty Pryde weighs the least, at 50 kg. */

SELECT name, MAX(height_m) AS max_height FROM marvels;
/* Juggernaut is the tallest character, at 2.87 meters. */
SELECT name, MAX(weight_kg) AS max_weight FROM marvels;
/* Juggernaut weighs the most, at 862 kg. */


--- Question 2: ---
/* What about those numbers per category in the data (using HAVING)? */

SELECT AVG(popularity) AS avg_pop FROM marvels GROUP BY gender HAVING gender = "Male";

SELECT name, MIN(popularity) AS min_pop FROM marvels GROUP BY gender HAVING gender = "Male";
/* Among the Male characters, Spider Man is ranked 1 */

SELECT name, MAX(popularity) AS max_pop FROM marvels GROUP BY gender HAVING gender = "Male";
/* Among the Male characters, Green Goblin is ranked last, at 91 */

SELECT AVG(popularity) AS avg_pop FROM marvels GROUP BY gender HAVING gender = "Female";
/* On average the female characters have a lower popularity score than the male characters (they are more popular). */ 

SELECT name, MIN(popularity) AS min_pop FROM marvels GROUP BY gender HAVING gender = "Female";
/* Among the Female characters, Storm is ranked highest, at 2 */

SELECT name, MAX(popularity) AS max_pop FROM marvels GROUP BY gender HAVING gender = "Female";
/* Among the Female characters, Kitty Pryde is ranked lowest, at 13 */


/* Let's look at the height of male characters... */

SELECT AVG(height_m) AS avg_height FROM marvels GROUP BY gender HAVING gender = "Male";
/* On average the male characters have an average height of 1.954 meters. */ 

SELECT name, MIN(height_m) AS min_height FROM marvels GROUP BY gender HAVING gender = "Male";
/* Among the Male characters, Wolverine is the shortest. */

SELECT name, MAX(height_m) AS max_height FROM marvels GROUP BY gender HAVING gender = "Male";
/* Among the male characters, Juggernaut is the tallest. */


/* Let's look at the height of female characters... */

SELECT AVG(height_m) AS avg_height FROM marvels GROUP BY gender HAVING gender = "Female";
/* On average the female characters have an average height of 1.734 meters. */ 

SELECT name, MIN(height_m) AS min_height FROM marvels GROUP BY gender HAVING gender = "Female";
/* Among the Female characters, Jean Grey is the shortest. */

SELECT name, MAX(height_m) AS max_height FROM marvels GROUP BY gender HAVING gender = "Female";
/* Among the Female characters, Storm is the tallest. */


--- Question 3: ---

/* What ways are there to group the data values that don’t exist yet (using CASE)? */

/* We might want to group characters by their fighting skill. We can use CASE to do this. */

SELECT AVG(fighting_Skills) AS avg_fight FROM marvels;
SELECT MIN(fighting_Skills) AS min_fight FROM marvels;
SELECT MAX(fighting_Skills) AS max_fight FROM marvels;
/* The characters' fighting skills range between 2 and 7, with an average fight score of 4.11. Let's say that a score above 6 is an "A", above 4 is a "B", above 3 is a "C", and everything else is an "F". */ 

SELECT name, fighting_Skills, 
    CASE 
        WHEN fighting_Skills > 6 THEN "A" 
        WHEN fighting_Skills > 4 THEN "B" 
        WHEN fighting_Skills > 3 THEN "C" 
        ELSE "F"
    END as "fight_grade"
FROM marvels;        
    
/* Now let's see how many characters fall into each group. */

SELECT COUNT(*), 
    CASE 
        WHEN fighting_Skills > 6 THEN "A" 
        WHEN fighting_Skills > 4 THEN "B" 
        WHEN fighting_Skills > 3 THEN "C" 
        ELSE "F"
    END as "fight_grade"
FROM marvels
GROUP BY fight_grade; 


/* What if we wanted to group by popularity? Let's say very popular are the top 10, fairly popular are the top 25, somewhat popular are the top 50, somewhat unpopular are the top 75, and the rest are very unpopular. */ 

SELECT name, popularity, 
    CASE 
        WHEN popularity <= 10 THEN "very popular" 
        WHEN popularity <= 25 THEN "fairly popular" 
        WHEN popularity <= 50 THEN "somewhat popular"
        WHEN popularity <= 75 THEN "somewhat unpopular"
        ELSE "very unpopular"
    END as "popularity_group"
FROM marvels;

SELECT COUNT(*),  
    CASE 
        WHEN popularity <= 10 THEN "very popular" 
        WHEN popularity <= 25 THEN "fairly popular" 
        WHEN popularity <= 50 THEN "somewhat popular"
        WHEN popularity <= 75 THEN "somewhat unpopular"
        ELSE "very unpopular"
    END as "popularity_group"
FROM marvels
GROUP BY popularity_group;


--- Question 4: ---
/* What interesting ways are there to filter the data (using AND/OR)? */

/* What if we want to know the male characters who are villains? */

SELECT name, alignment FROM marvels WHERE gender = "Male" AND alignment = "Bad";

/* Or the opposite, males that have good or neutral alignment? */

SELECT name, alignment FROM marvels WHERE gender = "Male" AND (alignment = "Good" OR alignment = "Neutral");


/* How about the characters from the US, that have an intelligence of 4 or higher? These would the very smart American characters*/

SELECT name, hometown, intelligence FROM marvels WHERE hometown = "USA" AND intelligence >= 4;

/* We could also look for the least popular characters (>27 ranking) who are either very strong or very intelligent (>=4). */

SELECT avg(popularity) from marvels;

SELECT name, popularity, strength, intelligence FROM marvels WHERE popularity > 27.4 AND (strength >= 4 OR intelligence >= 4);




















