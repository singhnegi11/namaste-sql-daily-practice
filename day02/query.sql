select Email,SUBSTRING(Email,charindex('@',Email)+1,len(Email)) as domain_com from customers;

points- CHARINDEX() Function 
        Finds the position (index) of a substring within another string.
        (SQL Server positions are 1-based, not 0-based.) 
        SELECT CHARINDEX('SQL', 'Microsoft SQL Server') AS Position; answer- 11

LEFT() Function
✅ Purpose
Extracts a specified number of characters from the beginning (left side) of a string
SELECT LEFT('Microsoft SQL', 9) AS Result; answer- 9

SUBSTRING() Function
  Extracts characters from a string starting at a specific position for a given length.
SUBSTRING(string_expression, start_position, length)
SELECT SUBSTRING('Microsoft SQL', 11, 3) AS Result; answer- sql
