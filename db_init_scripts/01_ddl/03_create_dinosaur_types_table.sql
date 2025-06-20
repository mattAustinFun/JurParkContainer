--create dinosaur_types table
CREATE TABLE IF NOT EXISTS dinosaur_types
(dino_type_id INT AUTO_INCREMENT PRIMARY KEY
,species_name VARCHAR(100)
,short_description VARCHAR(255));