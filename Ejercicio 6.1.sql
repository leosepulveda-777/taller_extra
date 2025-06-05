CREATE TABLE IF NOT EXISTS Historial_Prestamos (
    id_historial INT AUTO_INCREMENT PRIMARY KEY,
    id_prestamo INT NOT NULL,
    id_usuario INT NOT NULL,
    id_ejemplar INT NOT NULL,
    tipo_evento ENUM('PRESTAMO','DEVOLUCION') NOT NULL,
    fecha_evento DATETIME NOT NULL
);
