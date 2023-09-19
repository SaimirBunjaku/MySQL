-- 1. Listoji kurset me departamentet ku jane:
SELECT Courses.Name AS CourseName, Departments.Name AS DepartmentName
FROM Courses
INNER JOIN Departments ON Courses.DepartmentID = Departments.DepartmentID;

-- 2. Listoji enrollments tstudentit me emrin e kursit edhe daten

SELECT Students.FirstName, Students.LastName, Courses.Name AS CourseName, Enrollments.EnrollmentDate
FROM Enrollments
INNER JOIN Students ON Enrollments.StudentID = Students.StudentID
INNER JOIN Courses ON Enrollments.CourseID = Courses.CourseID;

-- 3.Listoji kryesort e departamentit, lenden edhe nacionalitetin e profit:
SELECT Departments.Name AS DepartmentName, Professors.FirstName AS HeadFirstName, Professors.LastName AS HeadLastName, DepartmentsHead.Subject, Professors.Nationality
FROM DepartmentsHead
INNER JOIN Professors ON DepartmentsHead.ProfessorID = Professors.ProfessorID
INNER JOIN Departments ON DepartmentsHead.DepartmentID = Departments.DepartmentID;


-- 4. Listoji studentat qe ndjekin Java Programming
SELECT Students.FirstName, Students.LastName
FROM Students
INNER JOIN Enrollments ON Students.StudentID = Enrollments.StudentID
INNER JOIN Courses ON Enrollments.CourseID = Courses.CourseID
WHERE Courses.Name = 'Java Programming';


-- 5. Selektoji krejt studentat qe jon ne ma shume se 1 course:
SELECT Students.FirstName, Students.LastName, COUNT(Enrollments.StudentID) AS EnrollCount
FROM Students
INNER JOIN Enrollments ON Students.StudentID = Enrollments.StudentID
GROUP BY Students.StudentID
HAVING EnrollCount > 1;

-- 6. Listo krejt studentat e nje kursi te caktum, psh per Web Development Fundamentals:
SELECT Students.FirstName, Students.LastName
FROM Students
INNER JOIN Enrollments ON Students.StudentID = Enrollments.StudentID
INNER JOIN Courses ON Enrollments.CourseID = Courses.CourseID
WHERE Courses.Name = 'Web Development Fundamentals';

-- 7. Listo Kurset dhe sa studenta jane ne ate kurs:
SELECT Courses.Name AS CourseName, COUNT(Enrollments.StudentID) AS EnrolledStudents
FROM Courses
LEFT JOIN Enrollments ON Courses.CourseID = Enrollments.CourseID
GROUP BY Courses.CourseID;

-- 8. Listo studentet qe nuk kane enroll asnje kurs:
SELECT Students.FirstName, Students.LastName
FROM Students
LEFT JOIN Enrollments ON Students.StudentID = Enrollments.StudentID
WHERE Enrollments.StudentID IS NULL;

-- 9. Listo krejt studentat dhe emrine e departamentit te tyre (nese jane ne nje departament):
SELECT Students.FirstName, Students.LastName, Departments.Name AS DepartmentName
FROM Students
LEFT JOIN Enrollments ON Students.StudentID = Enrollments.StudentID
LEFT JOIN Courses ON Enrollments.CourseID = Courses.CourseID
LEFT JOIN Departments ON Courses.DepartmentID = Departments.DepartmentID;

-- 10. Listo kurset qe kan assignment mrenda 7 dite:
SELECT Courses.Name AS CourseName, Assignments.AssignmentName, Assignments.DueDate
FROM Courses
INNER JOIN Assignments ON Courses.CourseID = Assignments.CourseID
WHERE Assignments.DueDate BETWEEN CURDATE() AND DATE_ADD(CURDATE(), INTERVAL 7 DAY);
