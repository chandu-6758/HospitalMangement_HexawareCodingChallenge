create DATABASE Hospital_Management;

use Hospital_Management;

CREATE TABLE Patient(
    patientId varchar(5) PRIMARY KEY,
    firstName VARCHAR(50) NOT NULL,
    lastName VARCHAR(50) NOT NULL,
    dateOfBirth DATE NOT NULL,
    gender VARCHAR(10) NOT NULL,
    contactNumber VARCHAR(15) NOT NULL,
    address VARCHAR(255) NOT NULL
);

CREATE TABLE Doctor (
    doctorId varchar(5) PRIMARY KEY,
    firstName VARCHAR(50) NOT NULL,
    lastName VARCHAR(50) NOT NULL,
    specialization VARCHAR(50) NOT NULL,
    contactNumber VARCHAR(15) NOT NULL
);


create table Appointment(
	appointmentId int primary key, 
	patientId varchar(5) not null,
	doctorId varchar(5) not null,
	appointmentDate DATETIME not null,description varchar(50),
	FOREIGN KEY(patientId) REferences Patient(patientId),
	FOREIGN KEY (doctorId) References Doctor(DoctorId)
);

Insert into Patient(patientId,firstName,lastName,dateOfBirth,gender,contactNumber,address) 
VALUES

('P1', 'Charitha', 'Curie', '1972-09-27', 'Female', '9897969576', 'Kadapa'),
('P2', 'Nandu', 'Dev', '2002-01-12', 'Male', '9876543210', 'Chennai'),
('P3', 'Setha','Ramu', '1985-04-15', 'Female', '9444555667', 'Allahabad'),
('P4', 'Tony','Stark', '2015-05-29', 'Male', '7778889999', 'Hyderabad'),
('P5', 'Natasha','Romanoff', '1984-11-22', 'Female', '6667778888', 'Mumbai'),
('P6', 'Steve','Rogers', '1999-07-04', 'Male', '5556667797', 'Kurnool'),
('P7', 'Bruce', 'Wayne', '2019-02-19', 'Male', '4678654390', 'Indore'),
('P8', 'Selena',' Gomez', '2020-07-22', 'Female', '3334445567', 'Chennai'),
('P9', 'John', 'Doe', '2001-03-17', 'Male', '2223334484', 'Kurnool'),
('P10', 'Emily', 'Chen', '2005-10-01', 'Female', '1112223333', 'Kadapa');


select * from Patient;

INSERT into Doctor(doctorId,firstName,lastName,specialization,contactNumber)
Values

('D01', 'Chandu',' Stark', 'Cardiologist', '9123456780'),
('D02', 'Priya','Singh', 'Neurologist', '4329087654'),
('D03', 'Teju ','Rathode', 'Surgeon', '98766546543'),
('D04', 'Aayushi' ,'Gupta', 'Pediatrician', '8769806547'),
('D05', 'Bruce',' Banner', 'Dermatologist', '9876543210'),
('D06', 'Sathak',' Kulkarni', 'Oncologist', '8907654762'),
('D07', 'Vikas ','Reddy', 'Dermatologist', '5764789432'),
('D08', 'Kushi',' Joshi', 'Rhumetologist', '9876867869'),
('D09', 'Harthik',' Pandey', 'Gastroenterologist', '8769806598'),
('D10', 'Harsha',' Gupta', 'Endocrinologist', '7869087651');

select * from Doctor;


Insert into appointment(appointmentId,patientId,doctorId,appointmentDate,description)
Values
(1,	'P10',	'D07',	'2024-10-28 10:30',	'Hair loss'),
(10,'P7','D08',	'2024-10-13 11:00','Arthritis'),
(2,	'P8','D09','2024-11-02 10:30','Stomach Ache'),
(3,	'P1','D10',	'2024-10-17 9:30','diabetes'),
(4,	'P3','D03',	'2024-10-11 12:00','Surgery'),
(5,	'P4','D07','2024-10-29 11:30','Hair loss'),
(6,	'P5','D02',	'2024-11-03 10:30','Migrane'),
(7,'P6'	,'D01'	,'2024-11-01 11:00','Hyper Tension'),
(8,'P9'	,'D07','2024-10-30 12:00','Hair loss'),
(9,'P2','D04','2024-10-12 12:00','Allergy');

select * from Appointment;



