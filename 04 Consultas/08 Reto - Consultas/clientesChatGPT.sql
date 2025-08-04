CREATE TABLE clientesChatGPT (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100), 
    ciudad VARCHAR(50), 
    edad INT CHECK (edad > 0), 
    compras_totales INT CHECK (compras_totales >= 0)
    );

INSERT INTO clientesChatGPT (nombre, ciudad, edad, compras_totales)
    VALUES ('Laura', 'Bogotá', 28, 350),
           ('Andres', 'Medellín', 35, 120),
           ('Marta', 'Bogotá', 42, 580),
           ('Jorge', 'Cali', 29, 0),
           ('Valentina', 'Medellin', 23, 220),
           ('David', 'Cali', 33, 90);

-- Cuenta cuántos clientes hay en la tabla.
SELECT COUNT(*) FROM clientesChatGPT;

--Selecciona todos los clientes ordenados por compras_totales de mayor a menor.
SELECT * FROM clientesChatGPT ORDER BY compras_totales DESC;

--Muestra solo los clientes que hayan hecho más de 100 compras.
SELECT * FROM clientesChatGPT WHERE compras_totales > 100;

/* Agrega una columna condicional llamada "Nivel de Cliente":

'Premium' si compras_totales > 300

'Regular' si compras_totales entre 101 y 300

'Nuevo' si compras_totales = 0

*/
SELECT Id, nombre,
    CASE
        WHEN compras_totales > 300 THEN 'Premium'
        WHEN compras_totales BETWEEN 101 AND 300 THEN 'Regular'
        WHEN compras_totales = 0 THEN 'Nuevo'
    END AS "Nivel de Cliente"
FROM clientesChatGPT;

--Cuenta cuántos clientes hay por ciudad.
SELECT ciudad, COUNT (*) AS "Total_Clientes" FROM clientesChatGPT GROUP BY ciudad;

--Muestra solo los 3 primeros clientes más jóvenes.
SELECT * FROM clientesChatGPT ORDER BY edad ASC LIMIT 3 OFFSET 0;

--Cuenta cuántos clientes mayores de 30 años hay en cada ciudad.
SELECT ciudad, COUNT(*) AS "Clientes 30+" FROM clientesChatGPT WHERE edad > 30
    GROUP BY ciudad;


/* Análisis de clientes por ciudad y edad.
Muestra el promedio (AVG) de compras_totales por ciudad.*/

SELECT ciudad, AVG(compras_totales) FROM clientesChatGPT GROUP BY ciudad;

--Filtra solo las ciudades donde el promedio sea mayor a 200.

SELECT ciudad, AVG(compras_totales) AS "Promedio por Ciudad" FROM clientesChatGPT 
    GROUP BY ciudad HAVING AVG(compras_totales) > 200;

--Muestra únicamente las ciudades donde al menos uno de los clientes tenga menos de 30 años.

SELECT DISTINCT ciudad FROM clientesChatGPT WHERE edad < 30;

--Ordena los resultados por promedio de compras de mayor a menor.

SELECT ciudad, AVG(compras_totales) AS "Promedio por Ciudad" FROM clientesChatGPT 
    GROUP BY ciudad ORDER BY "Promedio por Ciudad" DESC;


/* RETOS – NIVEL INTERMEDIO
🔹 1. ¿Quién es el cliente con más compras en cada ciudad?
*/

SELECT ciudad, MAX(compras_totales) FROM clientesChatGPT GROUP BY ciudad;

/* Clasifica clientes por edad:
Agrega una columna condicional llamada "Grupo Etario":

'Joven' si edad < 30

'Adulto' si edad entre 30 y 39

'Senior' si edad >= 40
*/

SELECT nombre, edad,
    CASE
        WHEN edad < 30 THEN 'Joven'
        WHEN edad BETWEEN 30 AND 39 THEN 'Adulto'
        WHEN edad >= 40 THEN 'Senior'
    END AS "Grupo Etario"
FROM clientesChatGPT;

-- ¿Cuántos clientes tiene cada grupo etario?

SELECT  
    CASE
        WHEN edad < 30 THEN 'Joven'
        WHEN edad BETWEEN 30 AND 39 THEN 'Adulto'
        WHEN edad >= 40 THEN 'Senior'
    END AS "Grupo Etario", COUNT("Grupo Etario") AS "# Clientes por grupo"
FROM clientesChatGPT GROUP BY "Grupo Etario";

--Muestra la ciudad con más clientes.

SELECT ciudad, COUNT(nombre) AS "Ciudad clientes+" FROM clientesChatGPT GROUP BY ciudad 
    ORDER BY "Ciudad clientes+" DESC LIMIT 1;

-- ¿Qué ciudades tienen clientes con cero compras?

SELECT DISTINCT ciudad FROM clientesChatGPT WHERE compras_totales = 0;

