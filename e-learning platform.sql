CREATE DATABASE elearning;
USE elearning;

CREATE TABLE Student (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    middle_name VARCHAR(50),
    last_name VARCHAR(50),
    phone_no VARCHAR(15),
    registration_date DATE,
    student_email VARCHAR(100) UNIQUE
);

CREATE TABLE Faculty (
    faculty_id INT PRIMARY KEY,
    faculty_name VARCHAR(100),
    faculty_email VARCHAR(100) UNIQUE,
    faculty_qualification VARCHAR(100),
    faculty_exp INT
);

CREATE TABLE Enrollment (
    en_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    FOREIGN KEY (student_id) REFERENCES Student(student_id)
);

CREATE TABLE Assignment (
    assignment_id INT PRIMARY KEY,
    title_des VARCHAR(200),
    due_date DATE,
    course_id INT,
    faculty_id INT,
    FOREIGN KEY (faculty_id) REFERENCES Faculty(faculty_id)
);

CREATE TABLE Submission (
    submission_id INT PRIMARY KEY,
    assignment_id INT,
    student_id INT,
    submission_date DATE,
    marks INT,
    FOREIGN KEY (assignment_id) REFERENCES Assignment(assignment_id),
    FOREIGN KEY (student_id) REFERENCES Assignment(assignment_id)
); 