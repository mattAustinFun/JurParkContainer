--create residents table
CREATE TABLE IF NOT EXISTS residents
(
  resident_id INT AUTO_INCREMENT PRIMARY KEY,
  dino_type_id INT NOT NULL,
  name VARCHAR(100),
  paddock_id INT NOT NULL,
  age INT,
  FOREIGN KEY (dino_type_id) REFERENCES dinosaur_types(dino_type_id),
  FOREIGN KEY (paddock_id) REFERENCES paddocks(paddock_id)
);