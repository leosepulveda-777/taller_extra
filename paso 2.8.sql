USE Biblioteca;
-- Consulta válida (debe funcionar)
SELECT titulo, autor FROM Libros LIMIT 5;

-- Intento de modificación (debe fallar)
DELETE FROM Libros WHERE id_libro = 10;

mysql -u profesorA -p


