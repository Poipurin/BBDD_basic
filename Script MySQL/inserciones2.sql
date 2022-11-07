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
VALUES ("Lilia", "Pim") , ("Andrea", "Montecinos"), ("Andrea", "Diethelm"), ("Andrea", "Cillag");


-- Modificar la data
-- drop database generationc2; eliminar base datos PELIGRO PIRATA PALIDO POSEE PODERES PELIGROSOS	
-- eliminar la tabla, también eliminamos el contenido, no se puede recuperar
drop table directivos;

-- eliminar el contenido de una tabla, no elimina la tabla
TRUNCATE TABLE directivos;

-- modificar una data en una columna específica (dato específico)
	UPDATE nombre_tabla SET nombre_columna= el_nuevo_dato WHERE condicion
	-- peligro sin la condicion PELIGROOOO
	UPDATE directivos SET apellido= "Lamda" WHERE id = 6; 
	select * from directivos;
	
-- Mostrar columnas específicas

SELECT nombre, id 
from directivos;

-- alias
SELECT d.nombre AS first_name, d.id as rut
FROM directivos d;

-- filtrar
-- puede traer desde 0 a muchos. (ya que no es id o primary)
SELECT d.id, d.nombre, d.apellido 
FROM directivos d
WHERE d.nombre = "Andrea" 
AND d.apellido = "Montecinos";

-- filtrar por parte de palabra/número
SELECT d.id, d.nombre, d.apellido 
FROM directivos d
WHERE d.nombre LIKE 'an%'; -- comodín 

-- comienza por culaquier coincidencia, pero finaliza con 
SELECT d.id, d.nombre, d.apellido 
FROM directivos d
WHERE d.nombre LIKE '%a'; 

-- busca la coincidencia en cualquier parte de la palabra
SELECT d.id, d.nombre, d.apellido 
FROM directivos d
WHERE d.apellido LIKE '%o%'
and d.nombre LIKE '%e%';