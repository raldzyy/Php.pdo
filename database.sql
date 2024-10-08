-- Insert records into Students Table
INSERT INTO Students (StudentID, Name, Email) VALUES
(1, 'Alice Johnson', 'alice.johnson@example.com'),
(2, 'Bob Smith', 'bob.smith@example.com'),
(3, 'Charlie Brown', 'charlie.brown@example.com'),
(4, 'David Lee', 'david.lee@example.com'),
(5, 'Eva Green', 'eva.green@example.com');
-- Insert records into Courses Table
INSERT INTO Courses (CourseID, CourseName, Credits) VALUES
(1, 'Mathematics', 3),
(2, 'History', 3),
(3, 'Computer Science', 4),
(4, 'Physics', 3);
-- Insert records into Enrollments Table
INSERT INTO Enrollments (EnrollmentID, StudentID, CourseID, EnrollmentDate) VALUES
(1, 1, 1, '2024-01-10'),
(2, 1, 3, '2024-01-12'),
(3, 2, 2, '2024-01-15'),
(4, 3, 1, '2024-01-20'),
(5, 4, 4, '2024-01-22'),
(6, 5, 3, '2024-01-25');
