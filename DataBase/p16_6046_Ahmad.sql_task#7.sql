 create database ahmad;
use ahmad;
create table users(
user_id int(6) primary key,
user_name varchar (20),
password varchar(12),
email varchar(22)
);

create table sumamary(
id int(6) primary key,
total_user int (6),
yahoo int(6),
hotmail int(6),
gmail int (6)
);

insert into sumamary (id, total_user, yahoo, hotmail, gmail) values(1,0,0,0,0);

 DELIMITER $$
 create TRIGGER `insertion_triger` AFTER INSERT
     ON `users`
     FOR EACH ROW
    BEGIN
      UPDATE sumamary SET id=1 WHERE id=1 ;
      UPDATE sumamary SET total_user=total_user+1  WHERE id=1;
     UPDATE sumamary SET gmail=gmail+1  WHERE new.email like '%gmail%';
     UPDATE sumamary SET yahoo=yahoo+1  WHERE new.email like '%yahoo%';
     UPDATE sumamary SET hotmail=hotmail+1  WHERE new.email like '%hotmail%';
END$$
 DELIMITER ;

DELIMITER $$


DELIMITER $$ 

CREATE
     TRIGGER `Updation_trigger` AFTER UPDATE
     ON `users`
     FOR EACH ROW
     BEGIN
      UPDATE sumamary SET id=1 WHERE id=1 ;
     UPDATE sumamary SET gmail=gmail+1  WHERE new.email like '%gmail%';
	UPDATE sumamary SET gmail=gmail-1  WHERE old.email like '%gmail%';
     UPDATE sumamary SET yahoo=yahoo+1  WHERE new.email like '%yahoo%';
 UPDATE sumamary SET yahoo=yahoo-1  WHERE old.email like '%yahoo%';
         UPDATE sumamary SET hotmail=hotmail+1  WHERE new.email like '%hotmail%';
    UPDATE sumamary SET hotmail=hotmail-1  WHERE old.email like '%hotmail%';
    
       END$$

DELIMITER ;
DELIMITER $$ 

CREATE
     TRIGGER `Deletion_trigger` AFTER DELETE
     ON `users`
     FOR EACH ROW
     BEGIN
     UPDATE sumamary SET gmail=gmail-1  WHERE old.email like '%gmail%';
 	UPDATE sumamary SET yahoo=yahoo-1  WHERE old.email like '%yahoo%';     
    UPDATE sumamary SET hotmail=hotmail-1  WHERE old.email like '%hotmail%';
       END$$

DELIMITER ;



 CREATE procedure insert_method(in a int(6), in b varchar(25), in c varchar(24), in e varchar(20))
INSERT INTO users (user_id, user_name, password, email) VALUES (a,b,c,e);

call insert_method(12,"ahmad", "p166046@gmail.com","p166046@gmail.com");
call insert_method(13,"ahmadhotmail", "meaoen123","p166046@hotmail.com");