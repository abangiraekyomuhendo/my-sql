CREATE DATABASE School

USE School;

CREATE TABLE Student (
    Regno VARCHAR(15),
    AccessNo VARCHAR(10),
    StudentName VARCHAR(25),
    TelNo INT,
    AmountPaid INT
);

DESCRIBE Student;

ALTER TABLE Student
ADD CONSTRAINT Con1
PRIMARY KEY (Regno);

ALTER TABLE Student
ADD CONSTRAINT Con2
CHECK (LENGTH(RegNo) > 9);

#NOT NULL AND NULL constraint can only be modified inline
ALTER TABLE Student
MODIFY AccessNo VARCHAR(10) NOT NULL;

ALTER TABLE Student
MODIFY StudentName VARCHAR(25) NOT NULL;

ALTER TABLE Student
ADD CONSTRAINT Con3
CHECK (LENGTH(TelNo) = 10);

ALTER TABLE Student
MODIFY AmountPaid INT NOT NULL;

ALTER TABLE Student
ADD CONSTRAINT Con4
CHECK (LENGTH(AmountPaid) > 200000);

ALTER TABLE Student
DROP CONSTRAINT Con4;

ALTER TABLE Student
ADD CONSTRAINT Con4
CHECK (AmountPaid > 200000);

ALTER TABLE Student
ADD COLUMN Course VARCHAR(10);

ALTER TABLE Student
ADD CONSTRAINT Con5
CHECK (Course IN('BSCS', 'BSDS', 'BSIT', 'DIT'));

ALTER TABLE Student
ADD CONSTRAINT Con6
UNIQUE (AccessNo);

#To read about:
#Default 
#string limitations: reg no & case types
#views

