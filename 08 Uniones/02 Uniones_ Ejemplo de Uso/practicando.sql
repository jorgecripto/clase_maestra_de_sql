SELECT p.nombre AS producto, u.nombre, u.usuario, p.precio_usd FROM productos AS p
	INNER JOIN usuarios AS u
	ON p.usuario_id = u.id;

SELECT p.nombre AS producto, u.nombre, u.usuario, p.precio_usd FROM productos AS p
	LEFT JOIN usuarios AS u
	ON p.usuario_id = u.id;

SELECT p.nombre AS producto, u.nombre, u.usuario, p.precio_usd FROM productos AS p
	RIGHT JOIN usuarios AS u
	ON p.usuario_id = u.id;

SELECT p.nombre AS producto, u.nombre, u.usuario, p.precio_usd FROM productos AS p
	FULL JOIN usuarios AS u
	ON p.usuario_id = u.id;

SELECT * FROM productos AS p
	FULL JOIN usuarios AS u
	ON p.usuario_id = u.id;