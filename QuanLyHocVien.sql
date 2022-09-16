CREATE DATABASE minitest_module3_week1;

USE minitest_module3_week1;

CREATE TABLE Address
(
	address_id		INT				NOT NULL AUTO_INCREMENT	PRIMARY KEY,
    address			VARCHAR	(50)	NOT NULL
);

CREATE	TABLE Classes
(
	classes_id		INT				NOT NULL AUTO_INCREMENT	PRIMARY KEY,
    classesName		VARCHAR(30)		NOT NULL,
    language		VARCHAR(30)		NOT NULL DEFAULT 'Kinh',
    decription		VARCHAR(200)	NOT NULL
);

CREATE TABLE Students
(
	students_id		INT				NOT NULL AUTO_INCREMENT PRIMARY KEY,
    fullName		VARCHAR(50)		NOT NULL,
    address_id		INT				NOT NULL UNIQUE,
    age				TINYINT			NOT NULL CHECK ( age >= 6 AND age <= 30 ) DEFAULT 6 ,
    phone			TINYINT			NOT NULL UNIQUE,
    classes_id		INT				NOT NULL UNIQUE,
    FOREIGN KEY (address_id) REFERENCES Address (address_id),
    FOREIGN KEY (classes_id) REFERENCES Classes (classes_id)
);

CREATE TABLE Course
(
	course_id		INT				NOT NULL AUTO_INCREMENT PRIMARY KEY,
    course_name		VARCHAR(100)	NOT NULL,
    decription		VARCHAR(100)	NOT NULL
);

CREATE TABLE Point
(
	point_id		INT				NOT NULL AUTO_INCREMENT PRIMARY KEY,
    course_id		INT				NOT NULL UNIQUE,
    students_id		INT				NOT NULL UNIQUE,
    point			TINYINT			NOT NULL,
    FOREIGN KEY (course_id) REFERENCES Course (course_id),
    FOREIGN KEY (students_id) REFERENCES Students (students_id)
);
    
    