use apex_db;

select 'The name of all albums by Pink Floyd.' AS 'Exercise 1';

select * from albums where artist = 'Pink Floyd';

select release_date from albums where name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT genre FROM albums
WHERE `name` = "Nevermind";

SELECT `name` FROM albums
WHERE release_date BETWEEN 1990 AND 1999;

SELECT `name` FROM albums
WHERE sales < 20;

SELECT `name`, genre
FROM albums
WHERE genre = 'Rock';