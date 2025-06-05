CREATE INDEX idx_prestamos_devolucion ON Prestamos(fecha_devolucion);
CREATE INDEX idx_libros_categoria_id ON Libros(categoria, id_libro);
CREATE INDEX idx_ejemplares_libro_ejemplar ON Ejemplares(id_libro, id_ejemplar);