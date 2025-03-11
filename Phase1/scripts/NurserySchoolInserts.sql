-- Insert into Person table (must be first since other tables reference it)
INSERT INTO public.Person (PersonId, PersonFirstName, city, street, num, PersonLastName, Mail) VALUES
('100000001', 'Alice', 'New York', '5th Ave', 10, 'Johnson', 'alice@mail.com'),
('100000002', 'Bob', 'Los Angeles', 'Sunset Blvd', 22, 'Smith', 'bob@mail.com'),
('100000003', 'Charlie', 'Chicago', 'Lake Shore Dr', 35, 'Brown', 'charlie@mail.com'),
('100000004', 'David', 'Houston', 'Main St', 17, 'Williams', 'david@mail.com'),
('100000005', 'Emma', 'Phoenix', 'Palm Rd', 8, 'Jones', 'emma@mail.com'),
('100000006', 'Frank', 'Philadelphia', 'Market St', 50, 'Miller', 'frank@mail.com'),
('100000007', 'Grace', 'San Antonio', 'Broadway', 14, 'Davis', 'grace@mail.com'),
('100000008', 'Henry', 'San Diego', 'Ocean Ave', 28, 'Martinez', 'henry@mail.com'),
('100000009', 'Ivy', 'Dallas', 'Elm St', 6, 'Lopez', 'ivy@mail.com'),
('100000010', 'Jack', 'San Francisco', 'Golden Gate Ave', 11, 'Gonzalez', 'jack@mail.com');

-- Insert into Nanny table
INSERT INTO public.Nanny (PersonId, experiance) VALUES
('100000001', 5),
('100000002', 3),
('100000003', 7),
('100000004', 4),
('100000005', 6),
('100000006', 8),
('100000007', 2),
('100000008', 5),
('100000009', 3),
('100000010', 7);

-- Insert into Parent table
INSERT INTO public.Parent (PersonId, duty, Attribute) VALUES
('100000001', 'Mother', 1),
('100000002', 'Father', 2),
('100000003', 'Guardian', 3),
('100000004', 'Mother', 1),
('100000005', 'Father', 2),
('100000006', 'Guardian', 3),
('100000007', 'Mother', 1),
('100000008', 'Father', 2),
('100000009', 'Guardian', 3),
('100000010', 'Mother', 1);

-- Insert into Group table
INSERT INTO public.Group (GroupNumber, GroupMax, GroupType, startTime, finishtime) VALUES
(1, 10, 'Infants', '08:00', '12:00'),
(2, 12, 'Toddlers', '09:00', '13:00'),
(3, 15, 'Preschool', '08:30', '12:30'),
(4, 10, 'Infants', '07:45', '11:45'),
(5, 12, 'Toddlers', '09:15', '13:15'),
(6, 15, 'Preschool', '08:15', '12:15'),
(7, 10, 'Infants', '08:30', '12:30'),
(8, 12, 'Toddlers', '09:30', '13:30'),
(9, 15, 'Preschool', '07:30', '11:30'),
(10, 10, 'Infants', '08:45', '12:45');

-- Insert into Telephone table
INSERT INTO public.Telephone (number, type, PersonId) VALUES
('555-1111', 1, '100000001'),
('555-2222', 2, '100000002'),
('555-3333', 1, '100000003'),
('555-4444', 2, '100000004'),
('555-5555', 1, '100000005'),
('555-6666', 2, '100000006'),
('555-7777', 1, '100000007'),
('555-8888', 2, '100000008'),
('555-9999', 1, '100000009'),
('555-0000', 2, '100000010');

-- Insert into Baby table
INSERT INTO public.Baby (BabyId, BabyBirthday, BabyName, sensitivity, GroupNumber) VALUES
('200000001', '2022-01-15', 1, 'None', 1),
('200000002', '2021-03-22', 2, 'Peanuts', 2),
('200000003', '2022-07-09', 3, 'Lactose', 3),
('200000004', '2021-12-05', 4, 'None', 4),
('200000005', '2022-06-17', 5, 'Gluten', 5),
('200000006', '2021-09-28', 6, 'None', 6),
('200000007', '2022-02-14', 7, 'Soy', 7),
('200000008', '2021-11-30', 8, 'None', 8),
('200000009', '2022-08-20', 9, 'Peanuts', 9),
('200000010', '2021-05-10', 10, 'None', 10);

-- Insert into ParentBaby table
INSERT INTO public.ParentBayby (PersonId, BabyId) VALUES
('100000001', '200000001'),
('100000002', '200000002'),
('100000003', '200000003'),
('100000004', '200000004'),
('100000005', '200000005'),
('100000006', '200000006'),
('100000007', '200000007'),
('100000008', '200000008'),
('100000009', '200000009'),
('100000010', '200000010');

-- Insert into NannyGroup table
INSERT INTO public.NanyGroup (PersonId, GroupNumber) VALUES
('100000001', 1),
('100000002', 2),
('100000003', 3),
('100000004', 4),
('100000005', 5),
('100000006', 6),
('100000007', 7),
('100000008', 8),
('100000009', 9),
('100000010', 10);
