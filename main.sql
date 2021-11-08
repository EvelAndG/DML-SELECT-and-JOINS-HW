CREATE TABLE teachers(
tid varchar(15),
fname varchar(15),
lname varchar(15),
PRIMARY KEY (tid));

INSERT INTO teachers
VALUES('1','john','smith'),
('2','bob','jones'),
('3','beth','anderson');

CREATE TABLE courses(
cid varchar(15),
cname varchar(30),
tid varchar(15),
PRIMARY KEY (cid));

INSERT INTO courses
VALUES('cis100','advanced web design','1'),
('chem101','organic chemistry','3'),
('chem102','advanced chemistry','3'),
('cis099','web design','1'),
('math005','algebra','2'),
('math100','calculus','2');

CREATE TABLE students(
sid varchar(15),
fname varchar(15),
lname varchar(15),
PRIMARY KEY (sid));

INSERT INTO students
VALUES('1','Edwardo', 'Swank'),
('2','Manuel', 'Hitchcock'),
('3','Keneth', 'Kemper'),
('4','Mason', 'Overby'),
('5','Christoper', 'Seibert'),
('6','Mose', 'Messina'),
('7','Derick', 'Hatchett'),
('8','Kasey', 'Winkler'),
('9','Tad', 'Long'),
('10','Lamar', 'Holloway');

CREATE TABLE registration(
cid varchar(15),
sid varchar(15),
PRIMARY KEY (cid,sid));

INSERT INTO registration
VALUES('chem101','1'),
('chem101','3'),
('chem101','4'),
('chem101','7'),
('chem101','8'),
('chem102','1'),
('chem102','9'),
('chem102','10'),
('chem102','7'),
('chem102','8'),
('cis099','7'),
('cis099','8'),
('cis099','9'),
('cis099','6'),
('cis099','5'),
('math005','3'),
('math005','4'),
('math005','5'),
('math005','6'),
('math005','7'),
('math100','10'),
('math100','3'),
('math100','7'),
('math100','9'),
('math100','1');


--changing output display
.mode "column"
.headers "on"
------------------
--Write your queries below. =)


SELECT students.fname,students.lname, courses.cname
FROM (students INNER JOIN registration ON students.sid = registration.sid) INNER JOIN courses ON courses.cid = registration.cid


