DELIMITER $$

CREATE PROCEDURE add_sensor_reading (
    IN p_reading_id INT,
    IN p_sensor_id INT,
    IN p_read_date DATETIME,
    IN p_dino_type_id INT,
    IN p_reading_count INT
)
BEGIN
    INSERT INTO sensor_readings (reading_id, sensor_id, read_date, dino_type_id, reading_count)
    VALUES (p_reading_id, p_sensor_id, p_read_date, p_dino_type_id, p_reading_count);
END add_sensor_reading$$ 
DELIMITER ;
