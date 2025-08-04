CREATE TABLE myretoventas (
  id SERIAL PRIMARY KEY,
  producto VARCHAR(50),
  cantidad INTEGER,
  precio DECIMAL(10, 2),
  fecha_venta DATE
);

-- Inserción de algunos datos iniciales
INSERT INTO myretoventas (producto, cantidad, precio, fecha_venta) VALUES
('Laptop', 5, 1200.50, '2022-01-15'),
('Teléfono', 8, 450.75, '2022-01-15'),
('Tablet', 3, 300.20, '2022-02-20'),
('Laptop', 2, 1100.25, '2022-02-20'),
('Teléfono', 10, 400.00, '2022-03-05');

/*Muestra la cantidad total de productos vendidos, el precio promedio y la 
fecha de la venta para cada producto*/

SELECT producto, SUM(cantidad) AS "Total productos vendidos", AVG(precio) AS "Precio promedio",
    MAX(fecha_venta) AS "Fecha ultima venta"
FROM myretoventas;

/* Muestra la cantidad total de productos vendidos, el precio promedio y la 
fecha de la venta para cada producto pero solo con productos con más de 5 unidades 
vendidas*/ 

SELECT producto, SUM(cantidad) AS "Total productos vendidos", 
                AVG(precio) AS "Precio promedio",
                MAX(fecha_venta) AS "Fecha ultima venta"
FROM myretoventas
GROUP BY producto
HAVING SUM(cantidad) > 5;