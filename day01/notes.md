For grouping of string data, string_agg function could be used and to do sorting as well in the same structure we can extend the command by 'WITHIN GROUP (ORDER BY column_name desc)


Datename() fuction is used to get the readable name of the date 
                     day name → Monday
                     month name → January
                     year → 2026 (as text)

Coalesce function is used to handle NULL values.
SELECT COALESCE(bonus, 0) AS BonusAmount
FROM Employees;--- if bonus value is null then it will return 0
