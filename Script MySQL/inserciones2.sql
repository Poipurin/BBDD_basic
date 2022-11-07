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

-- crear tabla
CREATE TABLE curso (
id INT NOT NULL AUTO_INCREMENT,
nombre varchar(100) NOT NULL,
cantidad_alumnos int not null,
especialidad varchar (100) not null,
primary key (id)
);
-- insertar en la tabla
INSERT INTO curso (nombre, cantidad_alumnos, especialidad)
VALUES ("Cohorte 1",30,"Java") , ("Cohorte 2",34,"Java") , ("Cohorte 3",30,"Java");

select * from curso;
-- agregar fk a estudiante
-- creacion de columna
ALTER TABLE estudiantes 
add cursoId INT;

-- relacionen las tablas
ALTER TABLE estudiantes 
ADD FOREIGN KEY(cursoId) REFERENCES curso (id); 

-- crear registros con fk

insert into estudiantes (nombre,apellido,cursoId)
values ("Bárbara", "Pino", 2),("Poi", "Purin", 2),("Elce", "Pillo", 1),("Lap", "Illa", 3);

select * from estudiantes
