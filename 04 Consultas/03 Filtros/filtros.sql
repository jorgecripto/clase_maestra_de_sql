SELECT * FROM paises 
    WHERE iso3 = 'AFG' 
	OR iso3 IS NULL
    ORDER BY codigo DESC;
	
SELECT * FROM paises 
    WHERE legible LIKE '%t_nia';
	
SELECT * FROM paises 
    WHERE legible IN ( 'Ecuador', 'Mexico' );

SELECT titulo, precio_usd FROM libros WHERE precio_usd = 20 OR precio_usd = 25;
SELECT titulo, precio_usd FROM libros WHERE precio_usd IN (20,25);
