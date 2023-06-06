DROP DATABASE IF EXISTS  homework6;
CREATE DATABASE IF NOT EXISTS  homework6;
USE homework6;

delimiter //
CREATE PROCEDURE sec(num INT)
BEGIN 
declare t char (255);
set t = concat(cast(floor(num/60/60/24) as char(3)),' days ',
cast(floor(mod(num/60/60/24,1)*24) as char(2)),' hours ',
cast(floor(mod(mod(num/60/60/24,1)*24,1)*60) as char(2)),' minutes ',
cast(round(mod(mod(mod(num/60/60/24,1)*24,1)*60,1)*60) as char(2)), ' seconds ');
select t;
END //
delimiter ;

CALL sec(123456);

delimiter //
CREATE function ev()
RETURNS VARCHAR(45)
DETERMINISTIC
BEGIN
DECLARE i INT ;
DECLARE result VARCHAR(45);
set i = 2;
set result = '';
while i<=10
do
SET result = CONCAT(result,' ', i);
set i=i+2;
END WHILE;
RETURN result;
  
END //
     delimiter ;
     
SELECT ev();

