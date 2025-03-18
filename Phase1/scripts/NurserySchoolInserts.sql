-- Insert into BabyGroup

INSERT INTO BabyGroup (GroupNumber, GroupMax, GroupType, startTime, finishtime, year) VALUES
(1, 10, '0-1 years', '07:00', '13:00', '2025'),
(2, 12, '0-1 years', '08:00', '14:00', '2025'),
(3, 8, '1-2 years', '09:00', '16:00', '2025'),
(4, 14, '1-2 years', '07:30', '15:30', '2025'),
(5, 9, '2-3 years', '08:30', '16:30', '2025'),
(6, 15, '2-3 years', '07:45', '14:45', '2025'),
(7, 11, '3-4 years', '07:15', '13:15', '2025'),
(8, 10, '3-4 years', '09:00', '17:00', '2025'),
(9, 7, '4-5 years', '08:15', '16:15', '2025'),
(10, 13, '4-5 years', '07:45', '15:45', '2025'),
(11, 14, '0-1 years', '08:00', '12:00', '2025'),
(12, 6, '1-2 years', '09:30', '15:30', '2025'),
(13, 5, '2-3 years', '08:15', '14:15', '2025'),
(14, 12, '3-4 years', '07:30', '13:30', '2025'),
(15, 10, '4-5 years', '09:00', '17:00', '2025'),
(16, 9, '0-1 years', '07:00', '12:30', '2025'),
(17, 8, '1-2 years', '09:15', '14:15', '2025'),
(18, 7, '2-3 years', '08:30', '13:30', '2025'),
(19, 15, '3-4 years', '07:45', '14:45', '2025'),
(20, 11, '4-5 years', '08:00', '16:00', '2025');


-- Insert into Person
INSERT INTO Person (PersonId, PersonFirstName, city, street, num, PersonLastName, Mail) VALUES
(1, 'David', 'Tel Aviv', 'Herzl', 12, 'Cohen', 'david.cohen@mail.com'),
(2, 'Sarah', 'Jerusalem', 'Ben Yehuda', 5, 'Levi', 'sarah.levi@mail.com'),
(3, 'Noam', 'Haifa', 'Hanassi', 3, 'Mizrahi', 'noam.mizrahi@mail.com'),
(4, 'Maya', 'Beer Sheva', 'Rager', 7, 'Peretz', 'maya.peretz@mail.com'),
(5, 'Avi', 'Eilat', 'Derech HaArava', 9, 'Shwartz', 'avi.shwartz@mail.com'),
(6, 'Rachel', 'Tel Aviv', 'Rothschild', 20, 'Gabay', 'rachel.gabay@mail.com'),
(7, 'Yossi', 'Holon', 'Weizman', 13, 'Ben David', 'yossi.bendavid@mail.com'),
(8, 'Or', 'Ashdod', 'Hahistadrut', 6, 'Harari', 'or.harari@mail.com'),
(9, 'Daniella', 'Rishon Lezion', 'Jabotinsky', 4, 'Baruch', 'daniella.baruch@mail.com'),
(10, 'Nadav', 'Netanya', 'HaNeviim', 11, 'Katz', 'nadav.katz@mail.com'),
(11, 'Shira', 'Petah Tikva', 'Em Hamoshavot', 8, 'Amar', 'shira.amar@mail.com'),
(12, 'Itay', 'Raanana', 'Hadar', 10, 'Fisher', 'itay.fisher@mail.com'),
(13, 'Yonatan', 'Kfar Saba', 'Even Gvirol', 15, 'Goldberg', 'yonatan.goldberg@mail.com'),
(14, 'Tamar', 'Modiin', 'Shivtei Israel', 2, 'Yitzhak', 'tamar.yitzhak@mail.com'),
(15, 'Eli', 'Bat Yam', 'Herzl', 17, 'Naftali', 'eli.naftali@mail.com'),
(16, 'Gal', 'Rehovot', 'Herzl', 5, 'Doron', 'gal.doron@mail.com'),
(17, 'Omer', 'Hadera', 'Herzl', 3, 'Segal', 'omer.segal@mail.com'),
(18, 'Lea', 'Lod', 'Rabin', 19, 'Shani', 'lea.shani@mail.com'),
(19, 'Amir', 'Ashkelon', 'Hagalil', 7, 'Davidson', 'amir.davidson@mail.com'),
(20, 'Dana', 'Beit Shemesh', 'Hachalutz', 1, 'Elbaz', 'dana.elbaz@mail.com');


-- Insert into Nanny
INSERT INTO Nanny (PersonId, experiance, salary, HireDate, Certification, Specialization) VALUES
(1, 5, 8500, '2020-06-01', 'Certified Caregiver', 'Infants'),
(2, 3, 7000, '2022-02-15', 'Certified Caregiver', 'Toddlers'),
(3, 7, 9000, '2018-08-20', 'First Aid', 'Special Needs'),
(4, 4, 7500, '2021-01-10', 'Certified Caregiver', 'Preschoolers'),
(5, 6, 8800, '2019-11-05', 'First Aid', 'Newborns');

-- Insert into Apotropus (Guardian)
INSERT INTO Apotropus (PersonId, workPhone, RelationToChild, Workplace) VALUES
(6, '0541234567', 'Mother', 'Hospital'),
(7, '0527654321', 'Father', 'Tech Company'),
(8, '0536789012', 'Guardian', 'University'),
(9, '0509988776', 'Mother', 'Bank'),
(10, '0545554443', 'Father', 'School');

-- Insert into Telephone
INSERT INTO Telephone (telNum, number, type, PersonId) VALUES
(1, '0501112233', 'Mobile', 1),
(2, '0524445566', 'Home', 2),
(3, '0537778899', 'Work', 3),
(4, '0541239876', 'Mobile', 4),
(5, '0556784321', 'Home', 5);

-- Insert into Vacation

INSERT INTO Vacation (startDate, endDate, year, HolidayName, VacationNum) VALUES
('2025-01-01', '2025-01-02', '2025', 'Rosh Hashanah', 1),
('2025-03-13', '2025-03-14', '2025', 'Purim', 2),
('2025-04-22', '2025-04-30', '2025', 'Passover', 3),
('2025-05-06', '2025-05-07', '2025', 'Yom HaZikaron', 4),
('2025-05-07', '2025-05-08', '2025', 'Yom HaAtzmaut', 5),
('2025-05-25', '2025-05-26', '2025', 'Shavuot', 6),
('2025-07-15', '2025-07-16', '2025', 'Tisha B’Av', 7),
('2025-09-23', '2025-09-24', '2025', 'Yom Kippur', 8),
('2025-09-30', '2025-10-07', '2025', 'Sukkot', 9),
('2025-12-21', '2025-12-29', '2025', 'Hanukkah', 10),
('2026-01-01', '2026-01-02', '2026', 'Rosh Hashanah', 11),
('2026-03-02', '2026-03-03', '2026', 'Purim', 12),
('2026-04-10', '2026-04-18', '2026', 'Passover', 13),
('2026-05-04', '2026-05-05', '2026', 'Yom HaZikaron', 14),
('2026-05-05', '2026-05-06', '2026', 'Yom HaAtzmaut', 15),
('2026-05-23', '2026-05-24', '2026', 'Shavuot', 16),
('2026-08-03', '2026-08-04', '2026', 'Tisha B’Av', 17),
('2026-09-11', '2026-09-12', '2026', 'Yom Kippur', 18),
('2026-09-18', '2026-09-25', '2026', 'Sukkot', 19),
('2026-12-10', '2026-12-18', '2026', 'Hanukkah', 20);

-- Insert into Baby
INSERT INTO Baby (BabyId, BabyBirthday, sensitivity, BabyName, GroupNumber) VALUES
(1, '2023-02-10', 'None', 'Liam', 1),
(2, '2022-05-30', 'Milk Allergy', 'Noa', 2),
(3, '2023-08-15', 'Gluten Allergy', 'Eitan', 3),
(4, '2022-12-25', 'Asthma', 'Maya', 4),
(5, '2023-09-18', 'None', 'Itai', 5);

-- Insert into Enrollment
INSERT INTO Enrollment (RegisterNum, EnrollmentDate, status, PersonId, BabyId) VALUES
(1, '2025-03-01', 'Active', 6, 1),
(2, '2025-03-02', 'Active', 7, 2),
(3, '2025-03-03', 'Pending', 8, 3),
(4, '2025-03-04', 'Active', 9, 4),
(5, '2025-03-05', 'Active', 10, 5);

-- Insert into NanyGroup
INSERT INTO NanyGroup (PersonId, GroupNumber) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- Insert into NanyVacation
INSERT INTO NanyVacation (PersonId, VacationNum) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- Insert into BabyApotropus
INSERT INTO BabyApotropus (BabyId, PersonId) VALUES
(1, 6),
(2, 7),
(3, 8),
(4, 9),
(5, 10);
