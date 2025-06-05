EXPLAIN SELECT id_libro, titulo, autor 
FROM Libros 
WHERE titulo LIKE 'Algoritmos%' OR autor = 'Donald Knuth';