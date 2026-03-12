use college_course_registration;
create table department(
dept_id int primary key,
dept_name varchar(100) not null);
insert into department values(1,"Computer Science"),(2,"Information Technology"),(3,"Electronics and Communication"),(4,"Electrical and Electronics and Engineering"),(5,"Civil Engineering"),(6,"Artificial Intelligence and machine Learning"),(7,"Mechanical Engineering");
select * from department;
create table student(
student_id int primary key,
student_name varchar(100),
email varchar(100),
dept_id int,
year int,
foreign key (dept_id) references department(dept_id));
INSERT INTO student VALUES
(101,'Arun','arun@gmail.com',1,2),
(102,'Priya','priya@gmail.com',2,1),
(103,'Karthik','karthik@gmail.com',1,3),
(104,'manoj','manoj21@gmail.com',3,4),
(105,'dhivya ','dhivya@gmail.com',2,1),
(106,'Sneha','sneha@gmail.com',1,1),
(107,'Vijay','vijay@gmail.com',4,3),
(108,'Meena','meena@gmail.com',5,2),
(109,'Ajay','ajay@gmail.com',3,4),
(110,'Nisha','nisha@gmail.com',2,3),
(111,'Aravind','aravind@gmail.com',1,2),
(112,'Keerthi','keerthi@gmail.com',2,1),
(113,'Surya','surya@gmail.com',3,4),
(114,'Lakshmi','lakshmi@gmail.com',5,3),
(115,'Manoj','manoj@gmail.com',4,2),
(116,'Pooja','pooja@gmail.com',1,1),
(117,'Hari','hari@gmail.com',2,2),
(118,'Deepa','deepa@gmail.com',3,3),
(119,'Sanjay','sanjay@gmail.com',4,4),
(120,'Anitha','anitha@gmail.com',5,1);
select * from student;

create table courses(
course_id int primary key,
course_name varchar(100),
credits int,
dept_id int,
foreign key (dept_id) references department(dept_id)
);
drop table courses;
INSERT INTO courses VALUES
(201,'Database Systems',4,1),
(202,'Java Programming',3,1),
(203,'Web Development',3,2),
(204,'Data Structures',4,1),
(205,'Operating Systems',4,1),
(206,'Computer Networks',3,2),
(207,'Digital Electronics',3,3),
(208,'Thermodynamics',4,4),
(209,'Structural Engineering',3,5),
(210,'Software Engineering',3,1),
(211,'Python Programming',3,1),
(212,'Artificial Intelligence',4,1),
(213,'Machine Learning',4,1),
(214,'Cloud Computing',3,2),
(215,'Cyber Security',3,2),
(216,'Mobile Application Development',3,2),
(217,'Microprocessors',4,3),
(218,'Embedded Systems',3,3),
(219,'VLSI Design',4,3),
(220,'Robotics',3,3),
(221,'Fluid Mechanics',4,4),
(222,'Manufacturing Technology',3,4),
(223,'Heat Transfer',4,4),
(224,'Engineering Mechanics',3,4),
(225,'Concrete Technology',3,5),
(226,'Geotechnical Engineering',4,5),
(227,'Transportation Engineering',3,5),
(228,'Environmental Engineering',3,5),
(229,'Big Data Analytics',4,1),
(230,'Data Mining',4,1);

select * from courses;

create table Instructors(
instructor_id int primary key,
instructor_name varchar(100),
dept_id int,
foreign key(dept_id) references department(dept_id)
);
INSERT INTO Instructors VALUES
(301,'Dr. Ravi',1),
(302,'Dr. Meena',2),
(303,'Dr. Kumar',3),
(304,'Dr. Ramesh',4),
(305,'Dr. Anjali',5),
(306,'Dr. Suresh',1),
(307,'Dr. Priya',2),
(308,'Dr. Kiran',3),
(309,'Dr. Arjun',1),
(310,'Dr. Kavitha',1),
(311,'Dr. Mohan',2),
(312,'Dr. Radhika',2),
(313,'Dr. Sandeep',3),
(314,'Dr. Latha',3),
(315,'Dr. Naveen',4),
(316,'Dr. Rekha',4),
(317,'Dr. Prakash',5),
(318,'Dr. Bhavani',5),
(319,'Dr. Harish',1),
(320,'Dr. Shalini',2),
(321,'Dr. Dinesh',3),
(322,'Dr. Usha',4),
(323,'Dr. Gopal',5),
(324,'Dr. Mahesh',1),
(325,'Dr. Asha',2),
(326,'Dr. Vijay',3),
(327,'Dr. Sunitha',4),
(328,'Dr. Ganesh',5);

select * from Instructors;

create table Registration(
reg_id int primary key,
student_id int,
course_id int,
semester varchar(100),
foreign key(student_id) references student(student_id),
foreign key(course_id) references courses(course_id));
INSERT INTO Registration VALUES
(1,101,201,'Semester 3'),
(2,102,203,'Semester 1'),
(3,103,202,'Semester 5'),
(4,104,207,'Semester 3'),
(5,105,206,'Semester 7'),
(6,106,201,'Semester 1'),
(7,107,208,'Semester 5'),
(8,108,209,'Semester 3'),
(9,109,207,'Semester 7'),
(10,110,203,'Semester 5'),
(11,111,202,'Semester 3'),
(12,112,206,'Semester 1'),
(13,113,207,'Semester 7'),
(14,114,209,'Semester 5'),
(15,115,208,'Semester 3'),
(16,116,210,'Semester 1'),
(17,117,203,'Semester 3'),
(18,118,207,'Semester 5'),
(19,119,208,'Semester 7'),
(20,120,209,'Semester 1'),
(21,101,204,'Semester 3'),
(22,102,214,'Semester 1'),
(23,103,205,'Semester 5'),
(24,104,218,'Semester 3'),
(25,105,215,'Semester 7'),
(26,106,204,'Semester 1'),
(27,107,221,'Semester 5'),
(28,108,225,'Semester 3'),
(29,109,219,'Semester 7'),
(30,110,214,'Semester 5'),
(31,111,212,'Semester 3'),
(32,112,216,'Semester 1'),
(33,113,220,'Semester 7'),
(34,114,226,'Semester 5'),
(35,115,222,'Semester 3'),
(36,116,229,'Semester 1'),
(37,117,215,'Semester 3'),
(38,118,218,'Semester 5'),
(39,119,223,'Semester 7'),
(40,120,227,'Semester 1'),
(41,101,210,'Semester 3'),
(42,102,216,'Semester 1'),
(43,103,229,'Semester 5'),
(44,104,217,'Semester 3'),
(45,105,214,'Semester 7'),
(46,106,211,'Semester 1'),
(47,107,224,'Semester 5'),
(48,108,228,'Semester 3'),
(49,109,230,'Semester 7'),
(50,110,213,'Semester 5');

select * from Registration;
SELECT c.course_name, d.dept_name
FROM Courses c
JOIN Department d
ON c.dept_id=d.dept_id;

SELECT s.student_name, c.course_name, r.semester
FROM Registration r
JOIN student s ON r.student_id=s.student_id
JOIN Courses c ON r.course_id=c.course_id;

SELECT dept_id, COUNT(*) AS total_students
FROM student
GROUP BY dept_id;

SELECT course_name
FROM courses
WHERE credits>2;

SELECT s.student_name, r.semester
FROM Registration r
JOIN student s
ON r.student_id = s.student_id
WHERE r.semester = 'Semester 3';

SELECT c.course_name
FROM Registration r
JOIN courses c
ON r.course_id = c.course_id
WHERE r.student_id = 101;

SELECT student_id, COUNT(course_id)
FROM Registration
GROUP BY student_id
HAVING COUNT(course_id) > 1;

SELECT student_name
FROM student
WHERE student_id NOT IN
(SELECT student_id FROM Registration);

SELECT dept_id, COUNT(course_id)
FROM courses
GROUP BY dept_id;

SELECT course_name
FROM courses
WHERE course_id NOT IN
(SELECT course_id FROM Registration);

SELECT course_id, COUNT(student_id)
FROM Registration
GROUP BY course_id
ORDER BY COUNT(student_id) DESC;

SELECT * FROM courses
WHERE course_name LIKE '%Data%';

SELECT DISTINCT semester
FROM Registration;

SELECT course_name
FROM courses
WHERE credits = (
SELECT MAX(credits) FROM Courses
);

SELECT AVG(credits) FROM courses;
SELECT MAX(credits) FROM courses;
SELECT MIN(credits) AS Lowest_Credit
FROM courses;

DELIMITER //

CREATE PROCEDURE GetStudentsByDepartment(IN dept INT)
BEGIN
SELECT student_name, email
FROM student
WHERE dept_id = dept;
END //

DELIMITER ;
CALL GetStudentsByDepartment(1);

CREATE VIEW Student_Course_View AS
SELECT s.student_name, c.course_name, r.semester
FROM Registration r
JOIN student s ON r.student_id = s.student_id
JOIN courses c ON r.course_id = c.course_id;

SELECT * FROM Student_Course_View;
SELECT * FROM student
ORDER BY student_name;

SELECT s.student_name, c.course_name
FROM Registration r
JOIN student s ON r.student_id = s.student_id
JOIN courses c ON r.course_id = c.course_id;