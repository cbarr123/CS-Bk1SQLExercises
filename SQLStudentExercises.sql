
--This is StudentExercises
CREATE TABLE Student (
	fname varchaR(15),
	lname varchar(15),
	slackHandle varchar(25),
	cohort varchar(20),
	exerciseiD int,
	CONSTRAINT FK_StudentExercise FOREIGN KEY(exerciseId) REFERENCES Exercise(Id)
)

CREATE TABLE Cohort (
	cohortName varchar(25),
	students int(10),
	instructors int(10)
)

CREATE TABLE Instructor (
	fname varchar(15),
	lname varchar(15),
	slackHandle varchar(25),
	cohort varchar(20),
	specialty varchar(25),
)

CREATE TABLE Exercise (
	name varchar(25),
	language varchar(25)
)