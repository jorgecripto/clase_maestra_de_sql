CREATE VIEW productos100 AS
    SELECT id, nombre AS producto FROM productos WHERE precio_usd > 100

SELECT * FROM 
	productos100 AS p
	INNER JOIN usuarios
	ON p.id = usuarios.id;
	
DROP VIEW IF EXISTS productos100;

-- Reto del editor de código en la lección de vistas o VIEW.

CREATE VIEW clientes_femeninos AS 
	SELECT id_cliente, nombre, edad FROM clientes WHERE sexo = 'Femenino';

SELECT * FROM clientes_femeninos WHERE edad > 21; 