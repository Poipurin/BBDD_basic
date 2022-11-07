
-- query para insertar un registro
INSERT INTO generationc2.estudiante (nombre,id,apellido) 
VALUES ('Post',7,'it');
INSERT INTO generationc2.estudiante (nombre,id,apellido) 
VALUES ('Lamp',8,'Ara');
INSERT INTO generationc2.estudiante (nombre,id,apellido) 
VALUES ('La',9,'Piz');

-- query para eliminar un registro
 DELETE FROM generationc2.estudiante
	WHERE nombre='Post' AND id=9 AND apellido='it';
 --creación de usuario
CREATE USER 'Poipurin'@'localhost' BY 'MuffinBerlin34';
--permisos de acceso
GRANT ALL PRIVILEGES ON *.* TO 'Poipurin'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;

--creacion usuaio para acceso remoto
CREATE USER 'Poipurin'@'%' IDENTIFIED BY 'MuffinBerlin34';
GRANT ALL PRIVILEGES ON *.* TO 'Poipurin'@'%' WITH GRANT OPTION;

FLUSH PRIVILEGES;