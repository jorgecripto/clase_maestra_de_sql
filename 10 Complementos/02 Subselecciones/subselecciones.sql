SELECT id, nombre AS producto FROM productos WHERE precio_usd > 100

SELECT * FROM 
	(SELECT id, nombre AS producto FROM productos WHERE precio_usd > 100) AS p
	INNER JOIN usuarios
	ON p.id = usuarios.id;

-- Reto del editor de código en la lección de subselecciones.

SELECT id_cliente, nombre FROM clientes WHERE sexo IS 'Masculino';

SELECT c.nombre, v.fecha, v.ubicación FROM
	(SELECT id_cliente, nombre FROM clientes WHERE sexo = 'Masculino') AS c
	INNER JOIN ventaswalmart AS v ON c.id_cliente = v.id_cliente
	ORDER BY v.fecha;

