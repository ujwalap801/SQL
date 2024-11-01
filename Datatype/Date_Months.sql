-- Date Maths

select datediff('2024-10-20','2024-8-17');
-- '64'

-- Time  diff-- 
SELECT TIMEDIFF('23:00::00','20:00:50');
-- 02:59:10

SELECT DATE_ADD(NOW(), INTERVAL 1 YEAR);
