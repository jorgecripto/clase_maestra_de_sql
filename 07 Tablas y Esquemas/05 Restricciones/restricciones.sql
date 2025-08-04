CREATE TABLE prueba (
  id SERIAL PRIMARY KEY,
  numero int DEFAULT 10,
  texto text NOT NULL
);

INSERT INTO prueba ( id, numero, texto ) VALUES (1, 5, 'texto');