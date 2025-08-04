SELECT * FROM productos
	INNER JOIN usuarios 
	ON productos.usuario_id = usuarios.id;
	
SELECT p.nombre, u.nombre, u.apellido FROM productos AS p
	INNER JOIN usuarios AS u 
	ON p.usuario_id = u.id;

--EJERCICIO DEL RETO DEL EDITOR DE CODIGO DE ACADEMIA X

SELECT c.nombre AS cliente, p.nombre AS producto, p.precio_usd AS precio, v.fecha
	FROM clientes AS c
	INNER JOIN ventaswalmart AS v
	ON c.id_cliente = v.id_cliente
	INNER JOIN productoswalmart AS p
	ON v.id_producto = p.id_producto; 