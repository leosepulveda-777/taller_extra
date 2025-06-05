DELIMITER //
CREATE TRIGGER trg_historial_prestamo
AFTER INSERT ON Prestamos
FOR EACH ROW
BEGIN
    INSERT INTO Historial_Prestamos(
        id_prestamo,
        id_usuario,
        id_ejemplar,
        tipo_evento,
        fecha_evento
    ) VALUES (
        NEW.id_prestamo,
        NEW.id_usuario,
        NEW.id_ejemplar,
        'PRESTAMO',
        NOW()
    );
END //
DELIMITER ;