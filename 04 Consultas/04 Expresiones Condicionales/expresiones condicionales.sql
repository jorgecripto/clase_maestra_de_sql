SELECT legible,
    CASE
        WHEN legible = 'Argentina' THEN 'che'
        WHEN legible = 'Mexico' THEN 'güey'
        ELSE 'pana' 
	END AS dude
FROM paises;

/* reto del curso de la pagina de la academia, 
agregue otro reto con un order by, ademas se puede agregar paginación
*/

SELECT autor, titulo, precio_usd, 
    CASE
        WHEN autor = 'Miguel de Cervantes Saavedra' THEN 'Agotado'
        WHEN autor = 'Ana Frank' THEN 'Pocas existencias'
        ELSE 'Disponibles'
    END AS disponibilidad
FROM libros;

SELECT autor, titulo, precio_usd, 
    (CASE
        WHEN autor = 'Miguel de Cervantes Saavedra' THEN 'Agotado'
        WHEN autor = 'Ana Frank' THEN 'Pocas existencias'
        ELSE 'Disponibles'
    END) AS disponibilidad
FROM libros order by precio_usd asc;