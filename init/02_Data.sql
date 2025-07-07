INSERT INTO staff (surname,forename,role_title,dept) VALUES
('Nedry','Dennis','Principal Software Engineer','IT'),
('Hammond','John','CEO','SLT'),
('Wu','Henry','Lead Geneticist','GEN'),
('Arnold','Ray','Head of Operations','OPS'),
('Muldoon','Robert','Game Warden','HR');

INSERT INTO visitors (surname,forename,occupation) VALUES
('Gennaro','Donald','Blood Sucking Lawyer'),
('Sattler','Ellie','Paleobotanist'),
('Malcolm','Ian','Chaos Theorist'),
('Grant','Alan','Paleontologist'),
('Murphy','Tim','Toast'),
('Murphy','Lex','Hacker');

INSERT INTO dinosaur_types (dino_type_id, species, diet, period) VALUES
(1, 'Velociraptor', 'Carnivore', 'Cretaceous'),
(2, 'Tyrannosaurus Rex', 'Carnivore', 'Cretaceous'),
(3, 'Triceratops', 'Herbivore', 'Cretaceous'),
(4, 'Stegosaurus', 'Herbivore', 'Jurassic'),
(5, 'Brachiosaurus', 'Herbivore', 'Jurassic'),
(6, 'Compsognathus', 'Carnivore', 'Jurassic'),
(7, 'Dilophosaurus', 'Carnivore', 'Jurassic'),
(8, 'Gallimimus', 'Omnivore', 'Cretaceous'),
(9, 'Pteranodon', 'Carnivore', 'Cretaceous'),
(10, 'Ankylosaurus', 'Herbivore', 'Cretaceous'),
(11, 'Parasaurolophus', 'Herbivore', 'Cretaceous'),
(12, 'Spinosaurus', 'Carnivore', 'Cretaceous');

INSERT INTO paddocks (paddock_id, name, description) VALUES
(1, 'Raptor Paddock', 'Secure enclosure for Velociraptors'),
(2, 'T-Rex Kingdom', 'Large paddock for Tyrannosaurus Rex'),
(3, 'Triceratops Territory', 'Habitat for Triceratops'),
(4, 'Stegosaurus Forest', 'Wooded area for Stegosaurus'),
(5, 'Brachiosaurus Plains', 'Open plains for Brachiosaurus');

INSERT INTO residents (dino_type_id, name, paddock_id, age) VALUES
(1, 'Alpha', 1, 6),
(1, 'Beta', 1, 5),
(1, 'The Big One', 1, 7),
(2, 'Rexy', 2, 12),
(3, 'Sarah', 5, 7),
(4, 'Spike', 5, 9),
(5, 'Big Al', 5, 15),
(6, 'Compy 1', 1, 2), (6, 'Compy 2', 1, 1), (6, 'Compy 3', 1, 3), (6, 'Compy 4', 1, 2),
(6, 'Compy 5', 2, 1), (6, 'Compy 6', 2, 2), (6, 'Compy 7', 2, 1), (6, 'Compy 8', 2, 3),
(6, 'Compy 9', 3, 2), (6, 'Compy 10', 3, 1), (6, 'Compy 11', 3, 2), (6, 'Compy 12', 3, 1),
(6, 'Compy 13', 4, 2), (6, 'Compy 14', 4, 1), (6, 'Compy 15', 4, 2), (6, 'Compy 16', 4, 3),
(6, 'Compy 17', 5, 1), (6, 'Compy 18', 5, 2), (6, 'Compy 19', 5, 1), (6, 'Compy 20', 5, 2),
(6, 'Compy 21', 1, 1), (6, 'Compy 22', 2, 2), (6, 'Compy 23', 3, 1), (6, 'Compy 24', 4, 2),
(6, 'Compy 25', 5, 1), (6, 'Compy 26', 1, 2), (6, 'Compy 27', 2, 1), (6, 'Compy 28', 3, 2),
(6, 'Compy 29', 4, 1), (6, 'Compy 30', 5, 2), (6, 'Compy 31', 1, 1), (6, 'Compy 32', 2, 2),
(6, 'Compy 33', 3, 1), (6, 'Compy 34', 4, 2),
(7, 'Spitter', 1, 4),
(8, 'Gallimimus 1', 5, 3), (8, 'Gallimimus 2', 5, 2), (8, 'Gallimimus 3', 5, 4),
(8, 'Gallimimus 4', 5, 5), (8, 'Gallimimus 5', 5, 3), (8, 'Gallimimus 6', 5, 2),
(8, 'Gallimimus 7', 5, 4), (8, 'Gallimimus 8', 5, 3), (8, 'Gallimimus 9', 5, 2),
(8, 'Gallimimus 10', 5, 4), (8, 'Gallimimus 11', 5, 3), (8, 'Gallimimus 12', 5, 2),
(9, 'Ptera', 5, 6),
(10, 'Anky', 5, 8),
(11, 'Para', 5, 7),
(12, 'Spino', 2, 11);

INSERT INTO motion_sensors (paddock_id, compass_direction, location_type) VALUES
(1, 'North', 'Perimeter'), (1, 'East', 'Perimeter'), (1, 'South', 'Perimeter'),
(1, 'West', 'Perimeter'), (1, 'North-East', 'Perimeter'), (1, 'South-West', 'Perimeter'),
(1, 'Center', 'Central'), (1, 'North', 'Central'), (1, 'South', 'Central'),
(1, 'East', 'Central'), (1, 'West', 'Central'), (1, 'South-East', 'Central'),
(2, 'North', 'Perimeter'), (2, 'East', 'Perimeter'), (2, 'South', 'Perimeter'),
(2, 'West', 'Perimeter'), (2, 'North-East', 'Perimeter'), (2, 'South-West', 'Perimeter'),
(2, 'Center', 'Central'), (2, 'North', 'Central'), (2, 'South', 'Central'),
(2, 'East', 'Central'), (2, 'West', 'Central'), (2, 'South-East', 'Central'),
(3, 'North', 'Perimeter'), (3, 'East', 'Perimeter'), (3, 'South', 'Perimeter'),
(3, 'West', 'Perimeter'), (3, 'North-East', 'Perimeter'), (3, 'South-West', 'Perimeter'),
(3, 'Center', 'Central'), (3, 'North', 'Central'), (3, 'South', 'Central'),
(3, 'East', 'Central'), (3, 'West', 'Central'), (3, 'South-East', 'Central'),
(4, 'North', 'Perimeter'), (4, 'East', 'Perimeter'), (4, 'South', 'Perimeter'),
(4, 'West', 'Perimeter'), (4, 'North-East', 'Perimeter'), (4, 'South-West', 'Perimeter'),
(4, 'Center', 'Central'), (4, 'North', 'Central'), (4, 'South', 'Central'),
(4, 'East', 'Central'), (4, 'West', 'Central'), (4, 'South-East', 'Central'),
(5, 'North', 'Perimeter'), (5, 'East', 'Perimeter'), (5, 'South', 'Perimeter'),
(5, 'West', 'Perimeter'), (5, 'North-East', 'Perimeter'), (5, 'South-West', 'Perimeter'),
(5, 'Center', 'Central'), (5, 'North', 'Central'), (5, 'South', 'Central'),
(5, 'East', 'Central'), (5, 'West', 'Central'), (5, 'South-East', 'Central');


COMMIT; 