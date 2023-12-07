SHOW databases;

use zendata;


CREATE TABLE Mentor(
    mentor_id INT PRIMARY KEY,
    mentor_name VARCHAR(10),
    mentor_email VARCHAR(20)
);

CREATE TABLE Batches(
    batch_id int primary key,
    batch_name varchar(50) not null,
    mentor_id INT,
    FOREIGN KEY (mentor_id) REFERENCES Mentors(mentor_id)
);
CREATE TABLE Students(
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    student_Name VARCHAR(30) NOT NULL,
    student_Email VARCHAR(40) UNIQUE,
    batch_id INT,
    join_date DATE,
    end_date DATE,
    FOREIGN KEY (batch_id) REFERENCES Batches(batch_id)
);



INSERT INTO Mentor(mentor_id,mentor_name,mentor_email)
VALUES 
(1,'Vijay','vijay@gmail.com'),
(2,'Ajith','ajith@gmail.com'),
(3,'Simbu','simbu@gmail.com'),
(4,'Suriya','suriya@gmail.com'),
(5,'Siva','siva@gmail.com');


INSERT INTO Batches(batch_id,batch_name,mentor_id)
VALUES 
(1,'Batch-1',1),
(2,'Batch-2',2),
(3,'Batch-3',3),
(4,'Batch-4',4),
(5,'Batch-5',5);

--INSERT DATA

INSERT INTO Students (student_id,student_Name,student_Emai,join_date,end_date,batch_id)
VALUES
(1,'John','john@gmail.com','2021-09-08','2021-09
-16',1),
(2,'Ramu','ramu@gmail.com','2021-09-07','2021-
09-17',2),
(3,'Kumar','kumar@gmail.com','2021-09-06','2021-0
9-18',3),
(4,'Priyanka','priyanka@gmail.com','2021-09-05','20
21-09-19',4),
(5,'Nandini','nandini@gmail.com','2021-09-04','2021
-09-20',5),
(6,'Anna','anna@gmail.com','2021-09-03','2021-09
-21',1),
(7,'Mary','mary@gmail.com','2021-09-02','2021-09
-22',2),
(8,'Jane','jane@gmail.com','2021-09-01','2021-0
9-23',3),
(9,'Tom','tom@gmail.com','2021-09-09','2021-09-
24',4),
(10,'Harry','harry@gmail.com','2021-09-08','2021-
09-25',5);

DESCRIBE Students;

select * from batches






