-- שליפת כל הנתונים מכל הטבלאות
SELECT * FROM BabyApotropus;
SELECT * FROM NanyVacation;
SELECT * FROM NanyGroup;
SELECT * FROM Enrollment;
SELECT * FROM Telephone;
SELECT * FROM Baby;
SELECT * FROM Vacation;
SELECT * FROM Apotropus;
SELECT * FROM Nanny;
SELECT * FROM Person;
SELECT * FROM BabyGroup;

-- ספירת כמות הרשומות בכל טבלה
SELECT 'BabyApotropus' AS table_name, COUNT(*) FROM BabyApotropus;
SELECT 'NanyVacation' AS table_name, COUNT(*) FROM NanyVacation;
SELECT 'NanyGroup' AS table_name, COUNT(*) FROM NanyGroup;
SELECT 'Enrollment' AS table_name, COUNT(*) FROM Enrollment;
SELECT 'Telephone' AS table_name, COUNT(*) FROM .elephone;
SELECT 'Baby' AS table_name, COUNT(*) FROM Baby;
SELECT 'Vacation' AS table_name, COUNT(*) FROM Vacation;
SELECT 'Apotropus' AS table_name, COUNT(*) FROM Apotropus;
SELECT 'Nanny' AS table_name, COUNT(*) FROM Nanny;
SELECT 'Person' AS table_name, COUNT(*) FROM Person;
SELECT 'BabyGroup' AS table_name, COUNT(*) FROM BabyGroup;
