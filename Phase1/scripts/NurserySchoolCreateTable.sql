CREATE TABLE if not exists BabyGroup
(
  GroupNumber INT NOT NULL,
  GroupMax INT NOT NULL,
  GroupType VARCHAR(15) NOT NULL,
  startTime VARCHAR(5) NOT NULL,
  finishtime VARCHAR(5) NOT NULL,
  year VARCHAR(5) NOT NULL,
  PRIMARY KEY (GroupNumber)
);

CREATE TABLE if not exists Person
(
  PersonId INT NOT NULL,
  PersonFirstName VARCHAR(15) NOT NULL,
  city VARCHAR(15) NOT NULL,
  street VARCHAR(15) NOT NULL,
  num INT NOT NULL,
  PersonLastName VARCHAR(15) NOT NULL,
  Mail VARCHAR(25),
  PRIMARY KEY (PersonId)
);

CREATE TABLE if not exists Nanny
(
  experiance int NOT NULL,
  salary INT NOT NULL,
  HireDate date NOT NULL,
  Certification VARCHAR(25) NOT NULL,
  Specialization VARCHAR(25) NOT NULL,
  PersonId INT NOT NULL,
  PRIMARY KEY (PersonId),
  FOREIGN KEY (PersonId) REFERENCES Person(PersonId) on delete cascade
);

CREATE TABLE if not exists Apotropus
(
  workPhone VARCHAR(10),
  RelationToChild VARCHAR(10) NOT NULL,
  Workplace VARCHAR(15),
  PersonId INT NOT NULL,
  PRIMARY KEY (PersonId),
  FOREIGN KEY (PersonId) REFERENCES Person(PersonId) on delete cascade
);

CREATE TABLE if not exists Telephone
(
  number VARCHAR(10) NOT NULL,
  type VARCHAR(15) NOT NULL,
  telNum int NOT NULL,
  PersonId INT NOT NULL,
  PRIMARY KEY (telNum),
  FOREIGN KEY (PersonId) REFERENCES Person(PersonId) on delete cascade
);

CREATE TABLE if not exists Vacation
(
  startDate date NOT NULL,
  endDate date NOT NULL,
  year VARCHAR(5) NOT NULL,
  HolidayName VARCHAR(15) NOT NULL,
  VacationNum INT NOT NULL,
  PRIMARY KEY (VacationNum)
);

CREATE TABLE if not exists Baby
(
  BabyBirthday date NOT NULL,
  sensitivity VARCHAR(15) NOT NULL,
  BabyName VARCHAR(15) NOT NULL,
  BabyId INT NOT NULL,
  GroupNumber INT NOT NULL,
  PRIMARY KEY (BabyId),
  FOREIGN KEY (GroupNumber) REFERENCES BabyGroup(GroupNumber) on delete cascade
);

CREATE TABLE if not exists Enrollment
(
  RegisterNum INT NOT NULL,
  EnrollmentDate date NOT NULL,
  status VARCHAR(15) NOT NULL,
  PersonId INT NOT NULL,
  BabyId INT NOT NULL,
  PRIMARY KEY (RegisterNum),
  FOREIGN KEY (PersonId) REFERENCES Apotropus(PersonId) on delete cascade, 
  FOREIGN KEY (BabyId) REFERENCES Baby(BabyId) on delete cascade
);

CREATE TABLE if not exists NanyGroup
(
  PersonId INT NOT NULL,
  GroupNumber INT NOT NULL,
  PRIMARY KEY (PersonId, GroupNumber),
  FOREIGN KEY (PersonId) REFERENCES Nanny(PersonId) on delete cascade,
  FOREIGN KEY (GroupNumber) REFERENCES BabyGroup(GroupNumber) on delete cascade
);

CREATE TABLE if not exists NanyVacation
(
  PersonId INT NOT NULL,
  VacationNum INT NOT NULL,
  PRIMARY KEY (PersonId, VacationNum),
  FOREIGN KEY (PersonId) REFERENCES Nanny(PersonId) on delete cascade,
  FOREIGN KEY (VacationNum) REFERENCES Vacation(VacationNum) on delete cascade
);

CREATE TABLE if not exists BabyApotropus
(
  BabyId INT NOT NULL,
  PersonId INT NOT NULL,
  PRIMARY KEY (BabyId, PersonId),
  FOREIGN KEY (BabyId) REFERENCES Baby(BabyId) on delete cascade,
  FOREIGN KEY (PersonId) REFERENCES Apotropus(PersonId) on delete cascade
);

