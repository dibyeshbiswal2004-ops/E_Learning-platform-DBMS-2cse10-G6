-- 1. Show all students
SELECT * FROM Student;

-- 2. Show student names and emails
SELECT first_name, last_name, student_email
FROM Student;

-- 3. Students registered after a specific date
SELECT *
FROM Student
WHERE registration_date > '2024-01-12';

-- 4. Show all faculty details
SELECT * FROM Faculty;

-- 5. Assignments with due date before 15 March
SELECT *
FROM Assignment
WHERE due_date < '2024-03-15';

-- 6. Show student names with their enrolled course_id
SELECT S.first_name, S.last_name, E.course_id
FROM Student S
JOIN Enrollment E ON S.student_id = E.student_id;

-- 7. Show assignment title with faculty name
SELECT A.title_des, F.faculty_name
FROM Assignment A
JOIN Faculty F ON A.faculty_id = F.faculty_id;

-- 8. Show student submissions with marks
SELECT S.first_name, S.last_name, Sub.marks
FROM Student S
JOIN Submission Sub ON S.student_id = Sub.student_id;

-- 9. Show students who scored more than 80
SELECT S.first_name, Sub.marks
FROM Student S
JOIN Submission Sub ON S.student_id = Sub.student_id
WHERE Sub.marks > 80;

-- 10. Count total students
SELECT COUNT(*) AS Total_Students
FROM Student;

-- 11. Average marks of students
SELECT AVG(marks) AS Average_Marks
FROM Submission;

-- 12. Highest marks scored
SELECT MAX(marks) AS Highest_Marks
FROM Submission;

-- 13. Show number of students in each course
SELECT course_id, COUNT(student_id) AS total_students
FROM Enrollment
GROUP BY course_id;

-- 14. Show student name, assignment title, and marks
SELECT S.first_name, A.title_des, Sub.marks
FROM Submission Sub
JOIN Student S ON Sub.student_id = S.student_id
JOIN Assignment A ON Sub.assignment_id = A.assignment_id;

-- 15. Show students who have NOT submitted any assignment
SELECT S.first_name, S.last_name
FROM Student S
LEFT JOIN Submission Sub ON S.student_id = Sub.student_id
WHERE Sub.submission_id IS NULL;