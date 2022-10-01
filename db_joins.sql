-- creating and updating students table (from previous activity)
CREATE TABLE students (
	id integer PRIMARY KEY, 
	first_name character varying(255) NOT NULL,
	middle_name character varying(255) NOT NULL, 
	last_name character varying(255) NOT NULL,
	age integer NOT NULL,
	location character varying(255) NOT NULL
);

INSERT INTO students (id, first_name, middle_name, last_name, age, location) 
VALUES 	(1, 'Juan', '', 'Cruz', 18, 'Manila'),
		    (2, 'Anne', '', 'Wall', 20, 'Manila'),
		    (3, 'Theresa', '', 'Joseph', 21, 'Manila'),
		    (4, 'Issac', '', 'Gray', 19, 'Laguna'),
		    (5, 'Zack', '', 'Matthews', 22, 'Marikina'),
		    (6, 'Finn', '', 'Lam', 25, 'Manila');

--SELECT * from students;

UPDATE students SET first_name = 'Ivan', middle_name = 'Ingram', last_name = 'Howard', age = 25, location = 'Bulacan' WHERE id = 1;

DELETE FROM students WHERE id = 6;
-- end of line for the creation and updating of the students table

-- start of code for creating the notes table
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