/*📌 Obtén solo las filas que tienen coincidencias en ambas tablas 
(ventas con información de usuario y producto)*/

SELECT * FROM usuarios
	INNER JOIN ventas ON usuarios.usuario_id = ventas.usuario_id
	INNER JOIN productos ON ventas.producto_id = productos.producto_id;

--📌 Muestra todas las ventas, incluso si no tienen información de usuario o producto

SELECT * FROM ventas
	LEFT JOIN usuarios ON usuarios.usuario_id = ventas.usuario_id
	LEFT JOIN productos ON ventas.producto_id = productos.producto_id;

--📌 Muestra todos los usuarios y productos, incluso si no están asociados con ventas.

SELECT * FROM ventas
	RIGHT JOIN usuarios ON usuarios.usuario_id = ventas.usuario_id
	RIGHT JOIN productos ON ventas.producto_id = productos.producto_id;

--📌 Muestra todas las ventas, usuarios y productos, incluso si no están asociados.

SELECT * FROM ventas
	FULL JOIN usuarios ON usuarios.usuario_id = ventas.usuario_id
	FULL JOIN productos ON ventas.producto_id = productos.producto_id;