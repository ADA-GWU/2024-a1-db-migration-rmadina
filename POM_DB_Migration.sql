create table students(                                             
st_id SERIAL PRIMARY KEY,     
st_name varchar(20),                    
st_last Varchar(20));

create table interests(
student_id SERIAL PRIMARY KEY, 
interest varchar(20));

INSERT INTO students (st_id, st_name, st_last) VALUES
(1, 'Konul', 'Gurbanova'),
(2, 'Shahnur', 'Isgandarli'),
(3, 'Natavan', 'Mammadova');

INSERT INTO interests (student_id, interest) VALUES
(1, 'Tennis'),
(1, 'Literature'),
(2, 'Math'),
(2, 'Tennis'),
(3, 'Math'),
(3, 'Music'),
(2, 'Football'),
(1, 'Chemistry'),
(3, 'Chess');

ALTER TABLE students
ALTER COLUMN st_name TYPE VARCHAR(30),
ALTER COLUMN st_last TYPE VARCHAR(30);

CREATE TABLE new_interests (
student_id INT PRIMARY KEY,
interests VARCHAR(30)[]
);

INSERT INTO new_interests (student_id, interests)
SELECT student_id, array_agg(interest) AS interests
FROM interests
GROUP BY student_id;

DROP TABLE interests;

ALTER TABLE new_interests RENAME TO interests;


SELECT student_id, array_agg(interest) AS interests
FROM interests
GROUP BY student_id
ORDER BY student_id;

SELECT student_id, interests FROM interests;
 student_id |           interests           
------------+-------------------------------
          3 | {Math,Music,Chess}
          2 | {Math,Tennis,Football}
          1 | {Tennis,Literature,Chemistry}
(3 rows)

