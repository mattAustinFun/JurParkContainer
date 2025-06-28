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

CREATE TABLE IF NOT EXISTS dinosaur_types (
  dino_type_id INT PRIMARY KEY,
  species VARCHAR(100) NOT NULL,
  diet VARCHAR(50),
  period VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS paddocks (
  paddock_id INT PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  description VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS residents (
  resident_id INT AUTO_INCREMENT PRIMARY KEY,
  dino_type_id INT NOT NULL,
  name VARCHAR(100),
  paddock_id INT NOT NULL,
  age INT,
  FOREIGN KEY (dino_type_id) REFERENCES dinosaur_types(dino_type_id),
  FOREIGN KEY (paddock_id) REFERENCES paddocks(paddock_id)
);

CREATE TABLE IF NOT EXISTS motion_sensors (
  sensor_id INT AUTO_INCREMENT PRIMARY KEY,
  paddock_id INT NOT NULL,
  compass_direction VARCHAR(16) NOT NULL,
  location_type ENUM('Perimeter', 'Central') NOT NULL,
  FOREIGN KEY (paddock_id) REFERENCES paddocks(paddock_id)
);

CREATE TABLE IF NOT EXISTS sensor_readings (
  reading_id INT AUTO_INCREMENT PRIMARY KEY,
  sensor_id INT NOT NULL,
  read_date DATETIME NOT NULL,
  dino_type_id INT NOT NULL,
  reading_count INT NOT NULL,
  FOREIGN KEY (sensor_id) REFERENCES motion_sensors(sensor_id),
  FOREIGN KEY (dino_type_id) REFERENCES dinosaur_types(dino_type_id)
);

