SELECT id_usuario, es_usuario_moroso(id_usuario) AS moroso
FROM Usuarios
WHERE id_usuario IN (123, 456, 789);