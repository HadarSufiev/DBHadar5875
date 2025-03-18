-- מחיקת טבלאות קישור (כי יש בהן מפתחות זרים)
DROP TABLE IF EXISTS public.BabyApotropus;
DROP TABLE IF EXISTS public.NanyVacation;
DROP TABLE IF EXISTS public.NanyGroup;
DROP TABLE IF EXISTS public.Enrollment;
DROP TABLE IF EXISTS public.Telephone;

-- מחיקת ישויות תלויות
DROP TABLE IF EXISTS public.Baby;
DROP TABLE IF EXISTS public.Vacation;
DROP TABLE IF EXISTS public.Apotropus;
DROP TABLE IF EXISTS public.Nanny;

-- מחיקת ישויות ראשיות
DROP TABLE IF EXISTS public.Person;
DROP TABLE IF EXISTS public.BabyGroup;

