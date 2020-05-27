use apex_db;

SELECT 'All albums in your table' AS 'Exercise 1';
-- select * from albums;
-- Make all the albums 10 times more popular (sales * 10)
update albums set sales = sales * 10;

SELECT 'All albums released before 1980' AS 'Exercise 2';
select * from albums where release_date <= 1980 ;

SELECT 'All albums by Michael Jackson' AS 'Exercise 3';
select * from albums where artist = 'Michael Jackson';


