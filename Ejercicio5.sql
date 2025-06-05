DELIMITER //
CREATE FUNCTION es_usuario_moroso(
    p_id_usuario INT
) RETURNS BOOL
DETERMINISTIC
READS SQL DATA
BEGIN
    DECLARE v_count INT;

    SELECT COUNT(*)
    INTO v_count
    FROM Prestamos
    WHERE id_usuario = p_id_usuario
      AND fecha_devolucion IS NULL
      AND fecha_limite < CURRENT_DATE();

    RETURN v_count > 0;
END //
DELIMITER ;