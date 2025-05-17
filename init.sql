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
,short_description VARCHAR(255))


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
('Compsognathus', 'Small, chicken-sized dinosaurs.'),
('Ceratosaurus', 'A carnivorous dinosaur with distinctive horns.'),
('Pachycephalosaurus', 'Known for its thick, domed skull.'),
('Maiasaura', 'A herbivorous dinosaur known for its nesting behavior.'),
('Troodon', 'Considered one of the most intelligent dinosaurs.'),
('Deinonychus', 'A close relative of Velociraptor, known for its sickle-shaped claw.'),
('Oviraptor', 'Originally thought to be an egg thief, now known for its nesting behavior.'),
('Therizinosaurus', 'Known for its long claws and herbivorous diet.'),
('Baryonyx', 'A fish-eating dinosaur with a crocodile-like snout.'),
('Suchomimus', 'Similar to Baryonyx, but more adapted for land.'),
('Giganotosaurus', 'One of the largest known carnivorous dinosaurs.'),
('Carcharodontosaurus', 'A large predator from Africa.'),
('Mamenchisaurus', 'Known for its extremely long neck.'),
('Saurophaganax', 'A large carnivorous dinosaur from North America.'),
('Irritator', 'A spinosaurid known for its long snout.'),
('Pachyrhinosaurus', 'Known for its thick, bony frill.'),
('Styracosaurus', 'Recognizable by its long horns and frill.'),
('Edmontosaurus', 'A large duck-billed dinosaur.'),
('Hadrosaurus', 'Known for its flat, duck-like snout.'),
('Ankylosaurus', 'Heavily armored with a club-like tail.'),
('Parasaurolophus', 'Known for its long, backward-curving crest.'),
('Corythosaurus', 'Recognizable by its helmet-like crest.'),
('Maiasaura', 'Known for its nesting behavior and parental care.'),
('Hypsilophodon', 'A small, fast herbivore.'),
('Ornithomimus', 'An ostrich-like dinosaur.'),
('Tropeognathus', 'A large pterosaur with a long beak.'),
('Plesiosaurus', 'Marine reptile with a long neck and flippers.'),
('Mosasaurus', 'Large marine reptile from the late Cretaceous period.'),
('Dreadnoughtus', 'One of the largest land animals ever.'),
('Argentinosaurus', 'A massive sauropod from South America.'),
('Gryposaurus', 'Known for its distinctive nose and crest.'),
('Theropoda', 'A clade of bipedal carnivorous dinosaurs.'),
('Sauropodomorpha', 'A clade of long-necked herbivorous dinosaurs.'),
('Ornithischia', 'A clade of herbivorous dinosaurs with bird-like hips.'),
('Pachycephalosauria', 'Known for their thick skulls and head-butting behavior.'),
('Ceratopsia', 'A clade of horned dinosaurs.'),
('Stegosauria', 'Known for their plates and spiked tails.'),
('Ankylosauria', 'Heavily armored dinosaurs with club-like tails.'),
('Hadrosauridae', 'Duck-billed dinosaurs.'),
('Sauropod', 'Long-necked herbivorous dinosaurs.'),
('Theropoda', 'Bipedal carnivorous dinosaurs.'),
('Pterosauria', 'Flying reptiles, not technically dinosaurs.'),
('Dromaeosauridae', 'A family of small to medium-sized theropods.'),
('Troodontidae', 'A family of small, bird-like theropods.'),
('Ornithomimidae', 'Ostrich-like dinosaurs.'),
('Carcharodontosauridae', 'Large carnivorous dinosaurs.'),
('Spinosauridae', 'Known for their sail-like structures.'),
('Sauropterygians', 'Marine reptiles with long necks.'),
('Plesiosauria', 'Marine reptiles with flippers.'),
('Ichthyosauria', 'Marine reptiles resembling dolphins.'),
('Pachycephalosauridae', 'Known for their thick skulls.'),
('Ceratopsidae', 'Horned dinosaurs with frills.'),
('Stegoceratops', 'A hybrid of Stegosaurus and Triceratops.'),
('Ankylosauridae', 'Heavily armored dinosaurs.'),
('Hadrosaurinae', 'Duck-billed dinosaurs with flat snouts.'),
('Sauropodiformes', 'Early relatives of sauropods.'),
('Theropoda', 'Bipedal carnivorous dinosaurs.'),
('Pterosauria', 'Flying reptiles, not technically dinosaurs.'),
('Dromaeosauridae', 'Small to medium-sized theropods.'),
('Troodontidae', 'Small, bird-like theropods.'),
('Ornithomimidae', 'Ostrich-like dinosaurs.'),
('Carcharodontosauridae', 'Large carnivorous dinosaurs.'),
('Spinosauridae', 'Known for their sail-like structures.'),
('Sauropterygians', 'Marine reptiles with long necks.'),
('Plesiosauria', 'Marine reptiles with flippers.'),
('Ichthyosauria', 'Marine reptiles resembling dolphins.'),
('Pachycephalosauridae', 'Known for their thick skulls.'),
('Ceratopsidae', 'Horned dinosaurs with frills.'),
('Stegoceratops', 'A hybrid of Stegosaurus and Triceratops.'),
('Ankylosauridae', 'Heavily armored dinosaurs.'),
('Hadrosaurinae', 'Duck-billed dinosaurs with flat snouts.'),
('Procompsognathus', 'Small, scavenging dinosaurs.'),
('Apatosaurus', 'Large, long-necked herbivores.'),
('Parasaurolophus', 'Known for its long, curved crest.');


commit;