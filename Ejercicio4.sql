DELIMITER //
CREATE PROCEDURE calcular_multa_simple(
    IN p_id_prestamo INT,
    OUT p_monto_multa DECIMAL(10,2)
)
BEGIN
    DECLARE v_fecha_limite DATE;
    DECLARE v_fecha_devolucion DATE;
    DECLARE v_dias_retraso INT;

    SELECT fecha_limite, fecha_devolucion 
    INTO v_fecha_limite, v_fecha_devolucion
    FROM Prestamos
    WHERE id_prestamo = p_id_prestamo;

    IF v_fecha_devolucion IS NULL THEN
        SET v_fecha_devolucion = CURRENT_DATE();
    END IF;

    SET v_dias_retraso = DATEDIFF(v_fecha_devolucion, v_fecha_limite);

    IF v_dias_retraso > 0 THEN
        SET p_monto_multa = v_dias_retraso * 1.00;
    ELSE
        SET p_monto_multa = 0.00;
    END IF;
END //
DELIMITER ;