CREATE TABLE IF NOT EXISTS sensor_readings
(
  reading_id INT,
  sensor_id INT NOT NULL,
  read_date DATETIME NOT NULL,
  dino_type_id INT NOT NULL,
  reading_count INT NOT NULL,
  FOREIGN KEY (sensor_id) REFERENCES motion_sensors(sensor_id),
  FOREIGN KEY (dino_type_id) REFERENCES dinosaur_types(dino_type_id)
);
 