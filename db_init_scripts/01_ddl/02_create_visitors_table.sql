--create visitors table
CREATE TABLE IF NOT EXISTS visitors
(visitor_id INT AUTO_INCREMENT PRIMARY KEY
,surname VARCHAR(100)
,forename VARCHAR(100)
,occupation VARCHAR(100));