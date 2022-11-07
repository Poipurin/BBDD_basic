-- insertar datos en tablas 
-- INSERT INTO nombre_tabla (nombre_col1, nombre_col2...) VALUES (valor1, valor2,...);
	
INSERT INTO directivos (nombre, apellido)
VALUES ("Mathias", "Klotz");

INSERT INTO directivos (nombre, apellido)
VALUES ("Pablo", "Garretón");

-- consultar
	SELECT *
	FROM directivos 
	WHERE id = 2 -- filtrando

-- insertar más de un resgistro
INSERT INTO directivos (nombre, apellido)
VALUES ("Lilia", "Pim") , ("Andrea", "Montecinos");


-- Modificar la data
-- drop database generationc2; eliminar base datos PELIGRO PIRATA PALIDO POSEE PODERES PELIGROSOS	
-- eliminar la tabla, también eliminamos el contenido, no se puede recuperar
drop table directivos;

-- eliminar el contenido de una tabla, no elimina la tabla
TRUNCATE TABLE directivos;

-- modificar una data en una columna específica (dato específico)
	UPDATE nombre_tabla SET nombre_columna= el_nuevo_dato WHERE condicion
	
	UPDATE directivos SET nombre= "Laura" WHERE id = 3; -- peligro sin la condicion PELIGROOOO
	select * from directivos;
