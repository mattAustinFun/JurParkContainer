--create tables
CREATE TABLE IF NOT EXISTS staff 
(staff_id INT AUTO_INCREMENT PRIMARY KEY
,surname VARCHAR(100)
,forename VARCHAR(100)
,role_title VARCHAR(100)
,dept VARCHAR(100));

CREATE TABLE IF NOT EXISTS visitors
(visitor_id INT AUTO_INCREMENT PRIMARY KEY  
,surname VARCHAR(100)   
,forename VARCHAR(100)
,occupation VARCHAR(100));

--Insert staff data
INSERT INTO staff (surname,forename,role_title,dept) VALUES ('Nedry','Dennis','Principal Software Engineer','IT');
INSERT INTO staff (surname,forename,role_title,dept) VALUES ('Hammond','John','CEO','SLT');
INSERT INTO staff (surname,forename,role_title,dept) VALUES ('Wu','Henry','Lead Geneticist','GEN');
INSERT INTO staff (surname,forename,role_title,dept) VALUES ('Arnold','Ray','Head of Operations','OPS');
INSERT INTO staff (surname,forename,role_title,dept) VALUES ('Muldoon','Robert','Game Warden','HR');

--Insert visitor data
INSERT INTO visitors (surname,forename,occupation) VALUES ('Gennaro','Donald','Blood Sucking Lawyer');
INSERT INTO visitors (surname,forename,occupation) VALUES ('Sattler','Ellie','Paleobotanist');
INSERT INTO visitors (surname,forename,occupation) VALUES ('Malcolm','Ian','Chaos Theorist'); 
INSERT INTO visitors (surname,forename,occupation) VALUES ('Grant','Alan','Paleontologist');
INSERT INTO visitors (surname,forename,occupation) VALUES ('Murphy','Tim','Toast');
INSERT INTO visitors (surname,forename,occupation) VALUES ('Murphy','Lex','Hacker'); 

commit;