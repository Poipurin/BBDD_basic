-- crear tabla
CREATE TABLE nombre_tabla(
	nombre_columna1 tipo_dato restricciones,
	nombre_columna1 tipo_dato restricciones,
	nombre_columna1 tipo_dato restricciones
);


CREATE TABLE tecnicos (
	id INT NOT NULL,
	nombre varchar(100) NOT NULL,
	apellido varchar(100) NOT NULL
);


-- modificando la tabla
ALTER TABLE  generationc2.tecnicos MODIFY COLUMN id INT PRIMARY KEY AUTO_INCREMENT NOT NULL;

CREATE TABLE directivos (
	id INT NOT NULL AUTO_INCREMENT,
	nombre varchar(100) NOT NULL,
	apellido varchar(100) NOT NULL,
	PRIMARY KEY (id)
);

-- describir tabla
describe estudiantes;

-- consultar los datos dentro de la tabla
select * from estudiantes;

