CREATE TABLE if not exists public.BabyGroup
(
  GroupNumber INT NOT NULL,
  GroupMax INT NOT NULL,
  GroupType VARCHAR(15) NOT NULL,
  startTime VARCHAR(5) NOT NULL,
  finishtime VARCHAR(5) NOT NULL,
  year VARCHAR(5) NOT NULL,
  PRIMARY KEY (GroupNumber)
);

CREATE TABLE if not exists public.Person
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

CREATE TABLE if not exists public.Nanny
(
  experiance int NOT NULL,
  salary INT NOT NULL,
  HireDate date NOT NULL,
  Certification VARCHAR(25) NOT NULL,
  Specialization VARCHAR(25) NOT NULL,
  PersonId INT NOT NULL,
  PRIMARY KEY (PersonId),
  FOREIGN KEY (PersonId) REFERENCES Person(PersonId)
);

CREATE TABLE if not exists public.Apotropus
(
  workPhone VARCHAR(10),
  RelationToChild VARCHAR(10) NOT NULL,
  Workplace VARCHAR(15),
  PersonId INT NOT NULL,
  PRIMARY KEY (PersonId),
  FOREIGN KEY (PersonId) REFERENCES Person(PersonId)
);

CREATE TABLE if not exists public.Telephone
(
  number VARCHAR(10) NOT NULL,
  type VARCHAR(15) NOT NULL,
  telNum int NOT NULL,
  PersonId INT NOT NULL,
  PRIMARY KEY (telNum),
  FOREIGN KEY (PersonId) REFERENCES Person(PersonId)
);

CREATE TABLE if not exists public.Vacation
(
  startDate date NOT NULL,
  endDate date NOT NULL,
  year VARCHAR(5) NOT NULL,
  HolidayName VARCHAR(15) NOT NULL,
  VacationNum INT NOT NULL,
  PRIMARY KEY (VacationNum)
);

CREATE TABLE if not exists public.Baby
(
  BabyBirthday date NOT NULL,
  sensitivity VARCHAR(15) NOT NULL,
  BabyName VARCHAR(15) NOT NULL,
  BabyId INT NOT NULL,
  GroupNumber INT NOT NULL,
  PRIMARY KEY (BabyId),
  FOREIGN KEY (GroupNumber) REFERENCES BabyGroup(GroupNumber)
);

CREATE TABLE if not exists public.Enrollment
(
  RegisterNum INT NOT NULL,
  EnrollmentDate date NOT NULL,
  status VARCHAR(15) NOT NULL,
  PersonId INT NOT NULL,
  BabyId INT NOT NULL,
  PRIMARY KEY (RegisterNum),
  FOREIGN KEY (PersonId) REFERENCES Apotropus(PersonId),
  FOREIGN KEY (BabyId) REFERENCES Baby(BabyId)
);

CREATE TABLE if not exists public.NanyGroup
(
  PersonId INT NOT NULL,
  GroupNumber INT NOT NULL,
  PRIMARY KEY (PersonId, GroupNumber),
  FOREIGN KEY (PersonId) REFERENCES Nanny(PersonId),
  FOREIGN KEY (GroupNumber) REFERENCES BabyGroup(GroupNumber)
);

CREATE TABLE if not exists public.NanyVacation
(
  PersonId INT NOT NULL,
  VacationNum INT NOT NULL,
  PRIMARY KEY (PersonId, VacationNum),
  FOREIGN KEY (PersonId) REFERENCES Nanny(PersonId),
  FOREIGN KEY (VacationNum) REFERENCES Vacation(VacationNum)
);

CREATE TABLE if not exists public.BabyApotropus
(
  BabyId INT NOT NULL,
  PersonId INT NOT NULL,
  PRIMARY KEY (BabyId, PersonId),
  FOREIGN KEY (BabyId) REFERENCES Baby(BabyId),
  FOREIGN KEY (PersonId) REFERENCES Apotropus(PersonId)
);

