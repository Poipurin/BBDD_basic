-- relacion de muchos a muchos


CREATE TABLE productos (
id INT PRIMARY KEY NOT NULL auto_increment,
nombre varchar (100) not null,
descripcion varchar (100) not null,
valor_unitario int
);


insert into productos(nombre,descripcion)
values ('Zapatos trekking', 'Zapatos color café para montaña'), 
('Zapatos hidrófilos', 'Zapatos negros resistentes al agua'),
('Caña de pescar', 'Caña de fribra de vidrio'),
('Carpa', 'carpa de dos cuerpos outdoor'),
('Pala', 'Pala de metal'),
('Linterna', 'Linterna led de carga solar')


select * from productos
select * from pedidos

CREATE TABLE pedidos (
id INT PRIMARY KEY NOT NULL auto_increment,
fecha date not null,
monto int not null,
cliente_id int 
);

 insert into pedidos (fecha, monto)
 values ('2022-11-09', 20000);
insert into pedidos (fecha, monto)
 values ('2022-11-09', 20000),('2022-11-09', 671000),('2022-11-09', 23000);

-- tabla intermedia; pedidos_productos recibe este nombre

-- id,fk tabla 1, fk tabla2
-- id, pedido_id, producto_id


create table pedidos_productos(
id INT PRIMARY KEY NOT NULL auto_increment,
pedido_id int not null,
producto_id int not null,
cant_producto int,
subtotal int,
foreign key (producto_id) references productos(id),
foreign key (pedido_id) references pedidos(id)
);

insert into pedidos_productos (pedido_id, producto_id)
values(1,1),(1,1);

select * from pedidos_productos

-- agregar

alter table pedidos_productos
add cant_producto int, add subtotal int;

alter table productos
add valor_unitario int;

alter table productos
add valor_unitario int; 