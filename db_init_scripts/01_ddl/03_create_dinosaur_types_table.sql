--create dinosaur_types table
CREATE TABLE IF NOT EXISTS dinosaur_types
(
  dino_type_id INT PRIMARY KEY,
  species VARCHAR(100) NOT NULL,
  diet VARCHAR(50),
  period VARCHAR(50)
);