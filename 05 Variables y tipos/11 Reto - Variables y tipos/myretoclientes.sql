CREATE TABLE myretoclientes (
    id SERIAL PRIMARY KEY, 
    nombre VARCHAR(50), 
    apellido VARCHAR(50), 
    email VARCHAR(100), 
    fecha_registro TIMESTAMP, 
    monto_compra NUMERIC(10,2)
);

INSERT INTO myretoclientes (nombre, apellido, email, fecha_registro, monto_compra)
    VALUES ('Juan', 'Pérez', 'juan@example.com', '2022-01-15 08:30:00', 120.50),
            ('Maria', 'Gómez', 'maria@example.com', '2022-02-20 10:45:00', 300.75),
            ('Carlos', 'Martinez', 'carlos@example.com', '2022-03-05 15:20:00', 50.20);

/* Muestra el nombre y apellido de los clientes en una sola columna 
con un espacio en blanco en el medio*/

SELECT CONCAT(nombre, ' ', apellido) AS "Nombre Completo" FROM myretoclientes;

-- Muestra el email y la longitud del email para cada cliente.

SELECT email, LENGTH(email) AS "Longitud del Email" FROM myretoclientes;

-- Muestra el monto de compra redondeado para cada cliente.

SELECT id, nombre, apellido, ROUND(monto_compra) AS "Monto de compra redondeada" FROM myretoclientes;

-- Muestra la fecha de registro y el tipo de dato de la columna.

SELECT fecha_registro, PG_TYPOEOF(fecha_registro) AS "Tipo de dato" FROM myretoclientes;
