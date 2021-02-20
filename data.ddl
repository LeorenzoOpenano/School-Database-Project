CREATE TABLE Course(
CourseNum int NOT NULL,
Title varchar(50),
Units int,
TextBook varchar(50),
DeptNo int NOT NULL,
PRIMARY KEY (CourseNum),
FOREIGN KEY (DeptNo) REFERENCES Department(DeptNum));

CREATE TABLE Degree(
Degree varchar(35) NOT NULL,
ProfSSN varchar(11) NOT NULL,
PRIMARY KEY (Degree),
FOREIGN KEY (ProfSSN) REFERENCES Professor(SSN));

CREATE TABLE Department(
DeptNum int NOT NULL,
DeptName varchar(50),
Location varchar(35),
Phone int,
Chairperson varchar(11) NOT NULL,
PRIMARY KEY (DeptNum),
FOREIGN KEY (Chairperson) REFERENCES Professor(SSN));

CREATE TABLE Enroll(
StudentID int NOT NULL,
SectionNo int NOT NULL,
CourseNumber int NOT NULL,
Grade varchar(2),
PRIMARY KEY (StudentID),
FOREIGN KEY (SectionNo) REFERENCES Section(SectionNum),
FOREIGN KEY (CourseNumber) REFERENCES Section(CourseNum));

CREATE TABLE Minor(
StudentID int NOT NULL,
DeptNo int NOT NULL,
FOREIGN KEY (StudentID) REFERENCES Student(CWID),
FOREIGN KEY (DeptNo) REFERENCES Department(DeptNum));


CREATE TABLE Prerequisite(
Prereq varchar(35) NOT NULL,
CourseNumber int NOT NULL,
PRIMARY KEY (Prereq),
FOREIGN KEY (CourseNumber) REFERENCES Course(CourseNum));

CREATE TABLE Professor(
SSN varchar(11) NOT NULL,
Sex varchar(2),
AreaCode int,
7Digit int,
Zip int,
State varchar(2),
City varchar(35),
Street varchar(50),
Title varchar(35),
Name varchar(50),
Salary float,
PRIMARY KEY (SSN));

CREATE TABLE Section(
SectionNum int NOT NULL,
CourseNumber int NOT NULL,
PSSN varchar(11) NOT NULL,
Classroom varchar(8),
NumOfSeats varchar(8),
MeetingDays varchar(8),
BeginTime varchar(8),
EndTime varchar(8),
PRIMARY KEY (SectionNum),
FOREIGN KEY (CourseNumber) REFERENCES Course(CourseNum),
FOREIGN KEY (PSSN) REFERENCES Professor(SSN));

CREATE TABLE Student(
CWID int NOT NULL,
FirstName varchar(50),
LastName varchar(50),
Phone varchar(14),
Address varchar(90),
DeptNo int NOT NULL,
PRIMARY KEY (CWID),
FOREIGN KEY (DeptNo) REFERENCES Department(DeptNum));
