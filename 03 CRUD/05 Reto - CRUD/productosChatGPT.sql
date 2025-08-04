CREATE TABLE productosChatGPT (
  id SERIAL PRIMARY KEY,
  nombre VARCHAR(100),
  categoria VARCHAR(50),
  precio DECIMAL(7,2),
  stock INT
);

INSERT INTO productosChatGPT (nombre, categoria, precio, stock)
  VALUES ('Mouse Logitech', 'Electrónica', 25.99, 100),
          ('Silla Ergonómica', 'Muebles', 149.50, 20),
          ('Libro SQL Básico', 'Libros', 18.00, 55),
          ('Teclado Mecánico', 'Electrónica', 75.00, 40);

--SEGUNDO RETO CHATGPT

SELECT * FROM productosChatGPT order by categoria;

SELECT * FROM productosChatGPT WHERE categoria = 'Electrónica';

UPDATE productosChatGPT SET stock = 35 WHERE nombre = 'Teclado Mecánico'; 

DELETE FROM productosChatGPT WHERE nombre = 'Libro SQL Básico'; 

--TERCER RETO CHATGPT

SELECT * FROM productosChatGPT WHERE precio > 50 AND stock > 10;

UPDATE productosChatGPT SET precio = precio * 1.10 WHERE categoria = 'Electrónica';

INSERT INTO productosChatGPT (nombre, categoria, precio, stock) 
  VALUES ('Monitor 24"', 'Electrónica', 199.99, 15); 

DELETE FROM productosChatGPT WHERE stock < 20; 

SELECT SUM(stock) AS total_stock FROM productosChatGPT; 

--CUARTO RETO 

SELECT AVG(precio) AS "precio promedio" FROM productosChatGPT;

SELECT * FROM productosChatGPT
WHERE precio = (SELECT MAX(precio) FROM productosChatGPT);

SELECT MIN(stock) FROM productosChatGPT;

SELECT COUNT(categoria) FROM productosChatGPT WHERE categoria = 'Electrónica';

--QUINTO RETO

SELECT * FROM productosChatGPT WHERE precio >= 20 AND precio <= 80;
--ALTERNATIVA 
SELECT * FROM productosChatGPT WHERE precio BETWEEN 20 AND 80; 

SELECT * FROM productosChatGPT WHERE nombre like '%Mecánico%';

UPDATE productosChatGPT SET stock = stock + 10 WHERE categoria = 'Muebles';

DELETE FROM productosChatGPT WHERE precio > 150; 

--SEXTO RETO DÍA DIFERENTE PRACTICANDO EJERCICIOS DE CONSULTAS CONDICIONALES

SELECT nombre, precio,
  CASE 
      WHEN precio < 30 THEN 'Barato'
      WHEN precio BETWEEN 30 AND 100 THEN 'Moderado'
      WHEN precio > 100 THEN 'Caro'
  END AS "Clasificación de Precio"
FROM productosChatGPT;
