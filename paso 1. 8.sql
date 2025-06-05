CREATE USER 'profesorA'@'localhost' IDENTIFIED BY 'Prof3s0rSegur0!';
GRANT rol_docente TO 'profesorA'@'localhost';

-- Hacer que el rol sea activo por defecto
SET DEFAULT ROLE rol_docente FOR  'profesorA'@'localhost';