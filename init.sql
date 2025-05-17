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


CREATE TABLE IF NOT EXISTS dinosaur_types
(dino_type_id INT AUTO_INCREMENT PRIMARY KEY
,species_name VARCHAR(100)
,short_description VARCHAR(255));


--Insert staff data
INSERT INTO staff (surname,forename,role_title,dept) VALUES 
('Nedry','Dennis','Principal Software Engineer','IT');
('Hammond','John','CEO','SLT');
('Wu','Henry','Lead Geneticist','GEN');
('Arnold','Ray','Head of Operations','OPS');
('Muldoon','Robert','Game Warden','HR');

--Insert visitor data
INSERT INTO visitors (surname,forename,occupation) VALUES 
('Gennaro','Donald','Blood Sucking Lawyer');
('Sattler','Ellie','Paleobotanist');
('Malcolm','Ian','Chaos Theorist'); 
('Grant','Alan','Paleontologist');
('Murphy','Tim','Toast');
('Murphy','Lex','Hacker'); 


INSERT INTO dinosaur_types (species_name, short_description) VALUES
('Velociraptor', 'Known for their intelligence and pack hunting behavior.'),
('Tyrannosaurus rex', 'The iconic apex predator.'),
('Triceratops', 'Recognizable by its three horns and large frill.'),
('Stegosaurus', 'Famous for its distinctive back plates and spiked tail.'),
('Brachiosaurus', 'A massive, long-necked herbivore.'),
('Dilophosaurus', 'Portrayed with a frill and venom-spitting ability in the novel.'),
('Gallimimus', 'Fast, ostrich-like dinosaurs.'),
('Ankylosaurus', 'Armored dinosaurs with a club-like tail.'),
('Spinosaurus', 'Known for its sail-like structure on its back.'),
('Pteranodon', 'Large flying reptiles, not technically dinosaurs.'),
('Iguanodon', 'One of the first dinosaurs ever discovered.'),
('Allosaurus', 'A large carnivorous dinosaur from the Jurassic period.'),
('Stegoceras', 'Known for its thick skull and head-butting behavior.'),
('Procompsognathus', 'Small, scavenging dinosaurs.'),
('Apatosaurus', 'Large, long-necked herbivores.'),
('Parasaurolophus', 'Known for its long, curved crest.');


commit;