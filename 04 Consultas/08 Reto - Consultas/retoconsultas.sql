CREATE TABLE productosX (
id serial primary key,
nombre varchar (50),
categoria varchar (50),
precio decimal (10,2),
stock int
);

INSERT INTO productosX (nombre, categoria, precio, stock)
    values ('laptop', 'Electrónica', 1200.50, 15), 
            ('Smartphone', 'Electrónica', 699.99, 30),
            ('Cámara', 'Electrónica', 499.75, 10),
            ('Bolso de Cuero', 'Moda', 149.95, 20),
            ('Zapatos Deportivos', 'Moda', 89.99, 50),
            ('Libro de Ciencia Ficción', 'Libros', 24.99, 100);

--inicio del reto de academia X

SELECT COUNT(id) FROM productosX;
--O
SELECT COUNT(*) FROM productosX;

SELECT * FROM productosX WHERE categoria = 'Electrónica' LIMIT 2 OFFSET 2;

SELECT * FROM productosX 
    WHERE categoria IN ('Electrónica', 'Moda') AND nombre LIKE '%Deportivos%';

SELECT nombre,
    CASE
        WHEN stock = 0 THEN 'Agotado'
        WHEN stock >= 1 THEN 'En Stock'
    END AS "Estado del Stock"
FROM productosX;

SELECT DISTINCT categoria FROM productosX;

SELECT * FROM productosX ORDER BY precio DESC;

