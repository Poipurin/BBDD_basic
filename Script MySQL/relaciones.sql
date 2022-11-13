-- ejercicio agregar una relación
/**
* tabla direcciones
* id, nombre, número, ciudad
* 
* agregar a todas las tablas la relación (todas las demás)
* 
* a lo menos 2 inserciones en las tablas
**/

CREATE TABLE direcciones(
id INT NOT NULL AUTO_INCREMENT,
nombre varchar(100) NOT NULL,
numero int NOT NULL,
ciudad varchar (100) NOT NULL,
departamento varchar(100),
PRIMARY KEY (id)
);

-- insertar en la tabla
INSERT INTO direcciones (nombre, numero, ciudad, departamento)
VALUES ("San benito",133,"Santiago", "15A") , ("presto",242144,"Valdivia","15A") , ("Juli",2312,"Antofagasta","15A");

select * from curso;
-- agregar fk a estudiante
-- creacion de columna
ALTER TABLE estudiantes 
add direccionId INT;

ALTER TABLE administrativos 
add direccionId INT;

ALTER TABLE directivos 
add direccionId INT;

ALTER TABLE profesores  
add direccionId INT;

ALTER TABLE tecnicos 
add direccionId INT;

-- relacionen las tablas
ALTER TABLE estudiantes 
ADD FOREIGN KEY(direccionId) REFERENCES direcciones (id); 
ALTER TABLE administrativos 
ADD FOREIGN KEY(direccionId) REFERENCES direcciones (id); 
ALTER TABLE profesores 
ADD FOREIGN KEY(direccionId) REFERENCES direcciones (id); 
ALTER TABLE tecnicos 
ADD FOREIGN KEY(direccionId) REFERENCES direcciones (id); 
ALTER TABLE directivos  
ADD FOREIGN KEY(direccionId) REFERENCES direcciones (id); 

-- crear registros con fk

insert into estudiantes (nombre,apellido,direccionId)
values ("Bárbara", "Pino", 2),("Poi", "Purin", 2),("Elce", "Pillo", 1),("Lap", "Illa", 3);

insert into administrativos  (nombre,apellido,direccionId)
values ("Bárbara", "Pino", 2),("Poi", "Purin", 2),("Elce", "Pillo", 1),("Lap", "Illa", 3);

insert into profesores  (nombre,apellido,direccionId)
values ("Bárbara", "Pino", 2),("Poi", "Purin", 2),("Elce", "Pillo", 1),("Lap", "Illa", 3);

insert into tecnicos (nombre,apellido,direccionId)
values ("Bárbara", "Pino", 2),("Poi", "Purin", 2),("Elce", "Pillo", 1),("Lap", "Illa", 3);

insert into directivos (nombre,apellido,direccionId)
values ("Bárbara", "Pino", 2),("Poi", "Purin", 2),("Elce", "Pillo", 1),("Lap", "Illa", 3);


select * from administrativos
