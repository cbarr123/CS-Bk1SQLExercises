--This is StudentExercises
CREATE TABLE Students (
	fname varchaR(15),
	lname varchar(15),
	slackHandle varchar(25),
	cohort varchar(20),
	exercises int(10),
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

CREATE TABLE Exercises (
	name varchar(25),
	language varchar(25)
)