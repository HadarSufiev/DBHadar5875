-- שליפת כל הנתונים מכל הטבלאות
SELECT * FROM public.BabyApotropus;
SELECT * FROM public.NanyVacation;
SELECT * FROM public.NanyGroup;
SELECT * FROM public.Enrollment;
SELECT * FROM public.Telephone;
SELECT * FROM public.Baby;
SELECT * FROM public.Vacation;
SELECT * FROM public.Apotropus;
SELECT * FROM public.Nanny;
SELECT * FROM public.Person;
SELECT * FROM public.BabyGroup;

-- ספירת כמות הרשומות בכל טבלה
SELECT 'BabyApotropus' AS table_name, COUNT(*) FROM public.BabyApotropus;
SELECT 'NanyVacation' AS table_name, COUNT(*) FROM public.NanyVacation;
SELECT 'NanyGroup' AS table_name, COUNT(*) FROM public.NanyGroup;
SELECT 'Enrollment' AS table_name, COUNT(*) FROM public.Enrollment;
SELECT 'Telephone' AS table_name, COUNT(*) FROM public.Telephone;
SELECT 'Baby' AS table_name, COUNT(*) FROM public.Baby;
SELECT 'Vacation' AS table_name, COUNT(*) FROM public.Vacation;
SELECT 'Apotropus' AS table_name, COUNT(*) FROM public.Apotropus;
SELECT 'Nanny' AS table_name, COUNT(*) FROM public.Nanny;
SELECT 'Person' AS table_name, COUNT(*) FROM public.Person;
SELECT 'BabyGroup' AS table_name, COUNT(*) FROM public.BabyGroup;
