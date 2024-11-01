-- DATE FORMAT
CREATE DATABASE IF NOT EXISTS ofc;
USE ofc;

CREATE TABLE person(
jd Date,
jt TIME,
jdt DATETIME);

	
SELECT jdt, date_format(jdt, '%D %a at %k') FROM person;
-- '2023-05-16 22:23:09', '16th Tue at 22'
-- '2023-05-16 22:23:09', '16th Tue at 22'
-- '2023-05-16 22:23:09', '16th Tue at 22'
-- '2024-11-01 09:16:58', '1st Fri at 9'


SELECT DATE_FORMAT(NOW(),'%d/%m/%y');
-- '01/11/24'

SELECT DATE_FORMAT(NOW(),'%D');
-- 1st

SELECT DATE_FORMAT(NOW(),'%D %a');
-- '1st Fri'


SELECT DATE_FORMAT(NOW(),'%D %a at %k');
-- '1st Fri at 9'

