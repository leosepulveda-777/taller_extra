EXPLAIN
SELECT p.id_prestamo, u.nombre, l.titulo, p.fecha_prestamo
FROM Prestamos p
JOIN Usuarios u ON p.id_usuario = u.id_usuario
JOIN Ejemplares e ON p.id_ejemplar = e.id_ejemplar
JOIN Libros l ON e.id_libro = l.id_libro
WHERE p.fecha_devolucion IS NULL
  AND l.categoria = 'Ciencia de la Computación'