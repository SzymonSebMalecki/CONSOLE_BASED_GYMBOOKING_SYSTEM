CREATE DATABASE IF NOT EXISTS gymbookingsystem;
USE gymbookingsystem;

DROP TABLE IF EXISTS Clients, Trainers, Bookings;

CREATE TABLE Clients
(
    CLIENT_ID INT AUTO_INCREMENT PRIMARY KEY,
    FNAME VARCHAR(30),
    LNAME VARCHAR(30),
    GENDER VARCHAR(30),
    AGE VARCHAR(2)
);

CREATE TABLE Trainers
(
     TRAINER_ID INT AUTO_INCREMENT PRIMARY KEY,
     FNAME VARCHAR(30),
     LNAME VARCHAR(30),
     GENDER VARCHAR(30)
);


CREATE TABLE Bookings
(
    BOOKING_ID INT AUTO_INCREMENT PRIMARY KEY,
    CLIENT_ID INT,
    FOREIGN KEY(CLIENT_ID) REFERENCES Clients(CLIENT_ID),
    TRAINER_ID INT,
    FOREIGN KEY(TRAINER_ID) REFERENCES Trainers(TRAINER_ID),
    BOOKING_DATE VARCHAR(20),
    BOOKING_TIME VARCHAR(20),
    DURATION_OF_SESSION INT,
    FOCUS VARCHAR(30)
);