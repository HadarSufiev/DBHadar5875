CREATE TABLE if not exists public.Group
(
  GroupNumber INT NOT NULL,
  GroupMax INT NOT NULL,
  GroupType VARCHAR(15) NOT NULL,
  startTime VARCHAR(5) NOT NULL,
  finishtime VARCHAR(5) NOT NULL,
  PRIMARY KEY (GroupNumber)
);

CREATE TABLE if not exists public.Person
(
  PersonId VARCHAR(9) NOT NULL,
  PersonFirstName VARCHAR(15) NOT NULL,
  city VARCHAR(15) NOT NULL,
  street VARCHAR(30) NOT NULL,
  num INT NOT NULL,
  PersonLastName VARCHAR(15) NOT NULL,
  Mail VARCHAR(20),
  PRIMARY KEY (PersonId)
);

CREATE TABLE if not exists public.Nanny
(
  experiance INT NOT NULL,
  PersonId VARCHAR(9) NOT NULL,
  PRIMARY KEY (PersonId),
  FOREIGN KEY (PersonId) REFERENCES Person(PersonId)
);

CREATE TABLE if not exists public.Parent
(
  duty VARCHAR(50),
  Attribute INT NOT NULL,
  PersonId VARCHAR(9) NOT NULL,
  PRIMARY KEY (PersonId),
  FOREIGN KEY (PersonId) REFERENCES Person(PersonId)
);

CREATE TABLE if not exists public.Telephone
(
  number VARCHAR(15) NOT NULL,
  type INT NOT NULL,
  PersonId VARCHAR(9) NOT NULL,
  FOREIGN KEY (PersonId) REFERENCES Person(PersonId)
);

CREATE TABLE if not exists public.NanyGroup
(
  PersonId VARCHAR(9) NOT NULL,
  GroupNumber INT NOT NULL,
  PRIMARY KEY (PersonId, GroupNumber),
  FOREIGN KEY (PersonId) REFERENCES Nanny(PersonId),
  FOREIGN KEY (GroupNumber) REFERENCES public.Group(GroupNumber)
);

CREATE TABLE if not exists public.Baby
(
  BabyId VARCHAR(9) NOT NULL,
  BabyBirthday DATE NOT NULL,
  BabyName INT NOT NULL,
  sensitivity VARCHAR(20) NOT NULL,
  GroupNumber INT NOT NULL,
  PRIMARY KEY (BabyId),
  FOREIGN KEY (GroupNumber) REFERENCES public.Group(GroupNumber)
);

CREATE TABLE if not exists public.ParentBayby
(
  PersonId VARCHAR(9) NOT NULL,
  BabyId VARCHAR(9) NOT NULL,
  PRIMARY KEY (PersonId, BabyId),
  FOREIGN KEY (PersonId) REFERENCES Parent(PersonId),
  FOREIGN KEY (BabyId) REFERENCES Baby(BabyId)
);