
INSERT INTO Prestamos(fecha_prestamo, fecha_limite, id_ejemplar, id_usuario)
VALUES (CURRENT_DATE(), DATE_ADD(CURRENT_DATE(), INTERVAL 7 DAY), 555, 111);


UPDATE Prestamos
SET fecha_devolucion = CURRENT_DATE()
WHERE id_prestamo = LAST_INSERT_ID();


SELECT * FROM Historial_Prestamos
WHERE id_prestamo = LAST_INSERT_ID()