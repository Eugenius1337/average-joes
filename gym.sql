CREATE DATABASE AverageJoes;

CREATE TABLE FitnessSpecialty
(
    FitnessSpecialtyId VARCHAR(10) NOT NULL,
    FitnessSpecialtyDescription VARCHAR(30) NOT NULL,
    PRIMARY KEY(FitnessSpecialtyId)
);

CREATE TABLE Trainer
(
    TrainerId VARCHAR(30) NOT NULL,
    LName VARCHAR(30) NOT NULL,
    FName VARCHAR(30) NOT NULL,
    NickName VARCHAR(30) NOT NULL,
    FitnessSpecialtyId VARCHAR(10) NOT NULL,
    PRIMARY KEY(TrainerId),
    FOREIGN KEY(FitnessSpecialtyId) REFERENCES FitnessSpecialty(FitnessSpecialtyId)
);

CREATE TABLE `Schedule`
(
    Scheduled VARCHAR
(10) NOT NULL,
    ScheduleDescription VARCHAR
(30) NOT NULL,
    PRIMARY KEY
(Scheduled)
);

CREATE TABLE `Member`
(
    MemberId VARCHAR
(10) NOT NULL,
    LName VARCHAR
(30) NOT NULL,
    FName VARCHAR
(30) NOT NULL,
    Address VARCHAR
(30) NOT NULL,
    Phone VARCHAR
(10) NOT NULL,
    TrainerId VARCHAR
(30) NOT NULL,
    Scheduled VARCHAR
(10) NOT NULL,
    PRIMARY KEY
(MemberId),
    FOREIGN KEY
(TrainerId) REFERENCES Trainer
(TrainerId),
    FOREIGN KEY
(Scheduled) REFERENCES `Schedule`
(Scheduled)
);

INSERT INTO FitnessSpecialty
    (FitnessSpecialtyId, FitnessSpecialtyDescription)
VALUES
    ('WEI', 'Weight Training'),
    ('XFIT', 'Cross Fit'),
    ('AER', 'Aerobics'),
    ('ZUM', 'Zumba!');
INSERT INTO `Schedule`
(
Scheduled,
ScheduleDescription
)
VALUES
('MOR6', 'Morning 6am'),
('AFT2', 'Afternoon 2pm'),
('EVE6', 'Evening 6pm');

INSERT INTO Trainer
    (TrainerId, LName, FName, NickName, FitnessSpecialtyId)
VALUES
    ('Turbo88', 'Charge', 'Turbo', 'Turbo', 'XFIT');

INSERT INTO `Member`
(
MemberId,
LName,
FName,
Address,
Phone,
TrainerId,
Scheduled
)
VALUES
('Bob007', 'Smith', 'Bob', '11200 SW 8th St', '3053482000', 'Turbo88', 'MOR6');

INSERT INTO Trainer
    (TrainerId, LName, FName, NickName, FitnessSpecialtyId)
VALUES
    ('Steelio22', 'Metal', 'Heavy', 'Steel', 'WEI');

UPDATE `Member`
SET TrainerId
= 'Steelio22' WHERE MemberId = 'Bob007';
UPDATE `Member`
SET Scheduled
= 'AFT2' WHERE MemberId = 'Bob007';

DELETE FROM `Member` WHERE MemberId = 'Bob007';

INSERT INTO Trainer
    (TrainerId, LName, FName, NickName, FitnessSpecialtyId)
VALUES
    ('Pump11', 'It', 'Pump', 'Pump', 'XFIT');

INSERT INTO `Member`
(
MemberId,
LName,
FName,
Address,
Phone,
TrainerId,
Scheduled
)
VALUES
('Diego001', 'Mora', 'Diego', '1234 SW 8th St', '3053482001', 'Pump11', 'MOR6');

INSERT INTO `Member`
(
MemberId,
LName,
FName,
Address,
Phone,
TrainerId,
Scheduled
)
VALUES
('Yovany002', 'Boada', 'Yovany', '1235 SW 8th St', '3053482002', 'Pump11', 'AFT2');

INSERT INTO `Member`
(
MemberId,
LName,
FName,
Address,
Phone,
TrainerId,
Scheduled
)
VALUES
('Andres003', 'Valdes', 'Andres', '1236 SW 8th St', '3053482003', 'Pump11', 'EVE6');

UPDATE `Member`
SET Scheduled
= 'EVE6' WHERE TrainerId = 'Pump11';



INSERT INTO `Member`
(
MemberId,
LName,
FName,
Address,
Phone,
TrainerId,
Scheduled
)
VALUES
('Eugenio007', 'Martin-Carreras', 'Eugenio', '1000 SW 8th St', '3053481997', 'Steelio22', 'EVE6');

UPDATE `Member`
SET TrainerId
= 'Pump11' WHERE MemberId = 'Eugenio007';

DELETE FROM `Member` WHERE MemberId = 'Eugenio007';
