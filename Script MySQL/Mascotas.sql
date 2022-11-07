CREATE TABLE mascotas (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	nombre varchar(100) NOT NULL,
	animal varchar (100) NOT NULL,
	raza varchar(100) NOT NULL
);

INSERT INTO mascotas (nombre, animal, raza)
VALUES ("Pip", "Perro", "labrador") , ("Punto", "Gato", "Persa"), ("Berlín", "Ave", "loro"),("Dan", "Conejo", "cabeza de león");

SELECT *
	FROM mascotas
	
	