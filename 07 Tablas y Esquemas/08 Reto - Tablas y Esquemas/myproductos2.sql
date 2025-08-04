CREATE TABLE myproductos2 (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT,
    precio NUMERIC(10.2) NOT NULL,
    stock INT NOT NULL
);

INSERT INTO myproductos2 (nombre, descripcion, precio, stock)
            VALUES ('Laptop', 'Tecnologia', 1200.50, 50),
                    ('Teléfono', 'Hogar', 450.75, 100),
                    ('Tablet', 'Oficina', 300.20, 30),
                    ('Laptop', 'Tecnologia', 1100, 5),
                    ('Almohada', 'Hogar', 10, 100);

-- Nueva tabla

CREATE TABLE myproductos_copia (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT,
    precio NUMERIC(10.2) NOT NULL,
    stock INT NOT NULL
);

INSERT INTO myproductos_copia (nombre) SELECT nombre FROM myproductos2;

ALTER TABLE myproductos2 ADD COLUMN marca VARCHAR(50);

ALTER TABLE myproductos2 ALTER COLUMN precio TYPE numeric(12.2);

ALTER TABLE myproductos2 DROP COLUMN descripcion;