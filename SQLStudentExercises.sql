--STEP ONE
--CREATE TABLE Cohort (
--	Id int NOT NULL PRIMARY KEY IDENTITY,
--	CohortName VARCHAR(25),
--)

--CREATE TABLE Student (
--	Id int NOT NULL PRIMARY KEY IDENTITY,
--	Fname VARCHAR(25),
--	Lname VARCHAR(25),
--	SlackHandle VARCHAR(25),
--	CohortId INTEGER,
--		CONSTRAINT FK_Student_Cohort FOREIGN KEY(CohortId) REFERENCES Cohort(Id)
--)

CREATE TABLE Instructor (
	Id int NOT NULL PRIMARY KEY IDENTITY,
	Fname VARCHAR(25),
	Lname VARCHAR(25),
	SlackHandle VARCHAR(25),
	CohortId INT,
	Specialty VARCHAR(25),
	CONSTRAINT FK_Instructor_Cohort FOREIGN KEY(CohortId) REFERENCES Cohort(Id)
)

--CREATE TABLE Exercise (
--	Id int NOT NULL PRIMARY KEY IDENTITY,
--	Ename VARCHAR(25),
--	Elanguage VARCHAR(25),
--)

CREATE TABLE StudentExercise (
	Id int NOT NULL PRIMARY KEY IDENTITY,
	StudentId INTEGER,
	ExerciseId INTEGER,
	CONSTRAINT FK_StudentExercise_Exercise FOREIGN KEY(ExerciseId) REFERENCES Exercise(Id),
	CONSTRAINT FK_StudentExercise_Student FOREIGN KEY(StudentId) REFERENCES Student(Id),
)