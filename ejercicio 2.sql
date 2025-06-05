-- Tabla Usuarios
CREATE TABLE IF NOT EXISTS Usuarios (
  id_usuario INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL
);

-- Tabla Ejemplares
CREATE TABLE IF NOT EXISTS Ejemplares (
  id_ejemplar INT AUTO_INCREMENT PRIMARY KEY,
  id_libro INT NOT NULL,
  FOREIGN KEY (id_libro) REFERENCES Libros(id_libro)
);

-- Tabla Prestamos
CREATE TABLE IF NOT EXISTS Prestamos (
  id_prestamo INT AUTO_INCREMENT PRIMARY KEY,
  id_usuario INT NOT NULL,
  id_ejemplar INT NOT NULL,
  fecha_prestamo DATE NOT NULL,
  fecha_devolucion DATE,
  FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario),
  FOREIGN KEY (id_ejemplar) REFERENCES Ejemplares(id_ejemplar)
);