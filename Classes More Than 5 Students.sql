-- Classes More Than 5 Students

SELECT class
FROM
(SELECT class, COUNT(student) as a
FROM Courses
GROUP BY class) as sub
WHERE a >= 5;