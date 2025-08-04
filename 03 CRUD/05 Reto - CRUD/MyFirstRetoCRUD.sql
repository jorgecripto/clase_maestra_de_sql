CREATE TABLE IF NO EXISTS MyFirstRetoCRUD(
    id, 
    Nombre,
    Apellido, 
    Edad,
    Carrera,
    PRIMARY KEY (id)
);
INSERT INTO MyFirstRetoCRUD (id, Nombre, Apellido, Edad, Carrera) 
VALUES (1, 'Paola', 'Hernández', 27, 'Diseño Grafico'),
        (2, 'Juan', 'Perez', 19, 'Ingeniería Civil'),
        (3, 'Ana', 'Sanchez', '23', 'Psicología'),
        (4, 'Carlos', 'Rodríguez', 20, 'Pintor'), 
        (5, 'Yery', 'Hernández', '50', 'Bruja'),
        (6, 'Jorge', 'Guevara', '38', 'Ingeniero Biotecnológico'); 

--El anterior fue mi codigo inicial, quedó mal y ahora lo arreglare según el ejemplo
--en otro archivo llamado RetoCRUD2



