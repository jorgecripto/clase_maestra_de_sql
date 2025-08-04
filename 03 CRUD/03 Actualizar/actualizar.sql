UPDATE usuarios
    SET 
        usuario = 'programadorX'
    WHERE id = 1000;

UPDATE usuarios
    SET 
        usuario = 'hildabeast',
        nombre = 'Hilde',
        apellido = 'Clark'
    WHERE id = 1001;

-- practicando con nuevos queries e información

update usuarios
	set
		usuario = 'paolamichelle22041',
		apellido = 'Hernández',
		pais = 'Venezuela', 
		edad = 27
	where id = 2204;