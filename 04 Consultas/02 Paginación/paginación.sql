SELECT id, nombre, apellido FROM usuarios 
    WHERE nombre = 'david'
    ORDER BY apellido DESC
    LIMIT 3 OFFSET 0;

SELECT * FROM usuarios WHERE edad = 29 ORDER BY id LIMIT 10 OFFSET 0;

SELECT * FROM usuarios ORDER BY id LIMIT 10 OFFSET 0;