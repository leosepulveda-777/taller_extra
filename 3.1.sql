START TRANSACTION;

-- Bloqueo del ejemplar
SELECT disponible 
FROM Ejemplares 
WHERE id_ejemplar = 321 
FOR UPDATE;

-- Verificar disponibilidad
-- (Suponer que la aplicación chequea el valor en su lógica)
-- Si disponible = TRUE, continuar; si FALSE, ROLLBACK

INSERT INTO Prestamos(fecha_prestamo, fecha_limite, id_ejemplar, id_usuario)
VALUES (CURRENT_DATE(), DATE_ADD(CURRENT_DATE(), INTERVAL 14 DAY), 321, 789);

UPDATE Ejemplares 
SET disponible = FALSE 
WHERE id_ejemplar = 321;

COMMIT;