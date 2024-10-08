SQL QUERY FOR CREATING THE TABLES
CREATE TABLE departments (
 DepartmentID INT PRIMARY KEY,
 DepartmentName VARCHAR(100),
 HeadOfDepartment VARCHAR(100)
);
CREATE TABLE instructors (
 InstructorID INT PRIMARY KEY,
 Name VARCHAR(100),
 Email VARCHAR(100) UNIQUE,
 DepartmentID INT,
 FOREIGN KEY (DepartmentID) REFERENCES departments(DepartmentID)
);
CREATE TABLE students (
 StudentID INT PRIMARY KEY,
 Name VARCHAR(100),
 Email VARCHAR(100) UNIQUE,
 DateOfBirth DATE,
 DepartmentID INT,
 FOREIGN KEY (DepartmentID) REFERENCES departments(DepartmentID)
);
CREATE TABLE courses (
 Cour seID INT PRIMARY KEY,
 CourseName VARCHAR(100),
 Credits INT,
 DepartmentID INT,
 InstructorID INT,
 FOREIGN KEY (DepartmentID) REFERENCES departments(DepartmentID),
 FOREIGN KEY (InstructorID) REFERENCES instructors(InstructorID)
);
CREATE TABLE enrollments (
 EnrollmentID INT PRIMARY KEY,
 StudentID INT,
 CourseID INT,
 EnrollmentDate DATE,
 Grade VARCHAR(2),
 FOREIGN KEY (StudentID) REFERENCES students(StudentID),
 FOREIGN KEY (CourseID) REFERENCES courses(CourseID)
);
SQL QUERY FOR INSERTING RECORDS IN ATABLE
Paste query here. Five rows of data per table can be considered enough. You can use AI to
work on this part much faster.
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