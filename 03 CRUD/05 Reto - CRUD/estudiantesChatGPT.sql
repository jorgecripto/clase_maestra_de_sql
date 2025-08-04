CREATE TABLE estudiantesChatGPT (
  id SERIAL PRIMARY KEY,
  nombre VARCHAR(100),
  edad INT,
  ciudad VARCHAR(50),
  promedio DECIMAL(3,2));

INSERT INTO estudiantesChatGPT (id, nombre, edad, ciudad, promedio) 
VALUES (1, 'Paola', 27, 'Valencia', 4.5), (2, 'Jorge', 38, 'Seattle', 4.8),
        (3, 'Dilan', 15, 'Valencia', 5.0), (4, 'Simon', 17, 'Cúcuta', 4.3);

SELECT * FROM estudiantesChatGPT;

SELECT * FROM estudiantesChatGPT WHERE ciudad = 'Seattle';

UPDATE estudiantesChatGPT SET promedio = 4.8 WHERE Nombre = 'Jorge';

DELETE FROM estudiantesChatGPT WHERE id = 1;

