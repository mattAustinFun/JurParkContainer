CREATE TABLE IF NOT EXISTS motion_sensors
(
  sensor_id INT AUTO_INCREMENT PRIMARY KEY,
  paddock_id INT NOT NULL,
  compass_direction VARCHAR(16) NOT NULL, -- e.g., 'North', 'South-East'
  location_type ENUM('Perimeter', 'Central') NOT NULL,
  FOREIGN KEY (paddock_id) REFERENCES paddocks(paddock_id)
);