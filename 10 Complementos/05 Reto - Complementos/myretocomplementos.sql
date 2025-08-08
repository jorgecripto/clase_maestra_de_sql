-- Creamos las tablas productos y pedidos.

CREATE TABLE productos (
    producto_id SERIAL PRIMARY KEY,
    nombre_producto VARCHAR(100) NOT NULL,
    precio NUMERIC(10,2) NOT NULL
);

INSERT INTO productos (nombre_producto, precio)
        VALUES ('producto A', 50.00),
                ('producto B', 75.00),
                ('producto C', 100.00);

CREATE TABLE pedidos (
    pedido_id SERIAL PRIMARY KEY,
    fecha_pedido DATE NOT NULL,
    producto_id INT REFERENCES productos(producto_id),
    cantidad INT NOT NULL
);

INSERT INTO pedidos (fecha_pedido, producto_id, cantidad)
        VALUES ('2023-01-15', 1, 2),
                ('2023-01-16', 2, 1),
                ('2023-01-17', 3, 3);

/* 📌 Crea un gatillo (after_insert_pedidos) que se activa después de cada inserción 
en la tabla de pedidos. Este gatillo actualiza el precio total en los pedidos según la 
cantidad y el precio del producto */

ALTER TABLE pedidos ADD COLUMN precio_total NUMERIC(10,2);

CREATE OR REPLACE FUNCTION actualiza_precio() RETURNS TRIGGER AS $after_insert_pedidos$
BEGIN
    UPDATE pedidos
    SET precio_total = p.precio * NEW.cantidad
    FROM productos AS p
    WHERE p.producto_id = NEW.producto_id AND pedidos.pedido_id = NEW.pedido_id;

    RETURN NEW;
END;

$after_insert_pedidos$ LANGUAGE plpgsql;

CREATE TRIGGER after_insert_pedidos
AFTER INSERT ON pedidos
FOR EACH ROW 
EXECUTE FUNCTION actualiza_precio();

-- 📌 Utiliza una subselección para mostrar los pedidos con un precio total mayor a 100.

SELECT precio_total from pedidos WHERE precio_total > 100; -- Esto es porque cree la nueva columna

SELECT * FROM pedidos
    WHERE (SELECT precio FROM productos WHERE producto_id = pedidos.producto_id) * cantidad > 100;

SELECT ped.* FROM pedidos AS ped
    INNER JOIN productos AS pro
    ON ped.producto_id = pro.producto_id
    WHERE pro.precio * ped.cantidad > 100; 

/* 📌 Crea una vista (productos_con_cantidad) que muestra los productos con las cantidades 
pedidas */

CREATE VIEW productos_con_cantidad AS
    SELECT pro.producto_id, pro.nombre, ped.cantidad FROM productos AS pro
    INNER JOIN pedidos AS ped
    ON pro.producto_id = ped.producto_id
    GROUP BY pro.producto_id, pro.nombre;

/* 📌 Crea un índice en la columna nombre_producto de la tabla productos para 
acelerar las búsquedas por nombre */

CREATE INDEX idx_nombre_producto ON productos(nombre_producto);