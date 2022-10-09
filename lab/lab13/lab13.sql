.read data.sql


CREATE TABLE bluedog AS
  SELECT color,pet from students where color = "blue" and pet = "dog";

CREATE TABLE bluedog_songs AS
  SELECT color, pet, song from students where color = "blue" and pet = "dog";


CREATE TABLE smallest_int_having AS
  SELECT time, smallest FROM students GROUP BY smallest HAVING count(*) = 1;


CREATE TABLE matchmaker AS
  SELECT first.pet, first.song, first.color, second.color FROM students AS first, students AS second
  WHERE first.pet = second.pet and first.song = second.song and first.time < second.time;


CREATE TABLE sevens AS
  SELECT s.seven
  FROM students AS s, numbers AS n
  WHERE s.number = 7 AND n.'7' = "True" AND s.time = n.time;


CREATE TABLE avg_difference AS
  SELECT round(avg(abs(number - smallest)))
  FROM students;

