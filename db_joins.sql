CREATE TABLE notes (
	id integer PRIMARY KEY,
	body text,
	student_id integer REFERENCES students (id)
);

INSERT INTO notes (id, body, student_id) 
VALUES	
    (1, 'Study OOP.', 5),
		(2, 'Buy pizza.', 2),
		(3, 'Play NBA.', 1),
		(4, 'Hike a mountain.', 3),
		(5, 'Write a song', 4),
		(6, 'Go on a date.', 2),
		(7, 'Play basketball', 1),
		(8, 'Study iterations', 5),
		(9, 'Jog!', NULL),
		(10, 'Review calculus.', NULL);

--SELECT * FROM notes ORDER BY id;

-- combine students and notes tables using INNER JOIN
SELECT *
FROM students s
INNER JOIN notes n
ON s.id = n.student_id
ORDER BY s.id;

-- combine students and notes tables using LEFT JOIN
SELECT *
FROM students s
LEFT JOIN notes n
ON s.id = n.student_id
ORDER BY s.id;

-- combine students and notes tables using RIGHT JOIN
SELECT *
FROM students s
RIGHT JOIN notes n
ON s.id = n.student_id
ORDER BY s.id;

-- combine students and notes tables using FULL JOIN
SELECT *
FROM students s
FULL JOIN notes n
ON s.id = n.student_id
ORDER BY s.id;