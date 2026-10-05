---------DQL------------

--Display all members
SELECT *
FROM member

--Show trainers with more than 5 years of experience
SELECT name, specialty, years_experience
FROM trainer
WHERE years_experience > 5;

--Show classes ordered by scheduled time
SELECT class_name, scheduled_time, duration
FROM class
ORDER BY scheduled_time;

--Display classes with capacity between 10 and 20
SELECT *
FROM class
WHERE max_capacity BETWEEN 10 AND 20;

--Search for a member using email
SELECT *
FROM member
WHERE email = 'sara@gmail.com';

--Display classes and their trainers
SELECT c.class_name,c.scheduled_time,c.duration,t.name AS trainer_name, t.specialty
FROM class AS c
JOIN trainer AS t
    ON c.trainer_id = t.trainer_id;


