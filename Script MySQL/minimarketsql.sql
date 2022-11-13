-- base de datos
create database donjoseminimarket;
use donjoseminimarket;

-- creación de tablas e inserciones

create table categorias (
id int not null primary key auto_increment,
nombre varchar (20) not null,
descripcion varchar (100)
);

insert into categorias (nombre, descripcion)
values ('Frutas', 'Frutas frescas de la vega'),
('Verduras', 'Verduras de todo tipo'), 
('Lácteos', 'Productos derivados de la leche'), 
('Cecinas', 'Todo tipo de encurtidos'
);

create table direcciones (
id int not null primary key auto_increment,
calle varchar (20) not null,
comuna varchar (30) not null,
numero int not null,
ciudad varchar (50) not null,
region varchar (50) not null
);

insert into direcciones (calle, comuna, numero, ciudad, region)
values ('Emplumados', 'Lampa', 12344, 'Santiago', 'Región Metropolitana'),
('Los Tomates', 'Limache', 4544, 'Valparaíso', 'Región de Valparaíso'),
('Turgentes', 'San Bernardo', 129, 'Santiago', 'Región Metropolitana'),
('Dulce', 'Maipú', 45, 'Santiago', 'Región Metropolitana')
;

create table proveedores (
id int not null primary key auto_increment,
nombre_empresa varchar (50) not null,
nombre_representante varchar (20) not null,
telefono varchar (10) not null,
mail varchar (50) not null,
direccion_id int not null,
foreign key (direccion_id) references direcciones(id)
);

insert into proveedores (nombre_empresa, nombre_representante, telefono, mail, direccion_id)
values ('Pollitos Tristes', 'José Plumas', '+569765234', 'lospollitosnodicen@gmail.com', 1),
('Super Fresh', 'Oliver Duras', '+569795123', 'comolechuga@gmail.com', 2),
('Nutrientes sa.', 'Alicia Maravilla', '+569497234', 'nutrientesleches@gmail.com', 3),
('Frutesa', 'Daniela Cacao', '+569845234', 'frutesa@gmail.com', 4)
;

create table productos (
id int not null primary key auto_increment,
tipoProducto varchar (50) not null,
precio int not null,
descripcion varchar (100),
categoria_id int not null,
proveedor_id int not null,
foreign key (categoria_id) references categorias(id),
foreign key (proveedor_id) references proveedores(id)
);

insert into productos (tipoProducto, precio, descripcion, categoria_id, proveedor_id)
values ('Tomate','200', 'Tomate limachino', 1, 4),
('Lechuga escarola','400', 'Escarola', 2, 2),
('Leche','400', 'Leche entera', 3, 3),
('Jamón de pavo','1000', 'Jamón acaramelado de pavo', 4, 1),
('Jamón de cerdo','1500', 'Jamón ahumado de cerdo', 4, 1),
('Manzana verde','400', 'Manzana verde importada', 1, 4);

create table clientes (
id int not null primary key auto_increment,
nombre varchar (20) not null,
apellido varchar (20) not null,
telefono varchar (10) not null
);

insert into clientes (nombre, apellido, telefono)
values ('César', 'Dilla', '+569027651'),
('Polina', 'Dali', '+569087687'),
('Laria', 'Menti', '+569561651'),
('Dante', 'Laos', '+569965123');

create table compras (
id int not null primary key auto_increment,
cliente_id int not null,
fecha_compra date not null,
foreign key (cliente_id) references clientes(id)
);

insert into compras(cliente_id, fecha_compra)
values (1, '2022-11-10'),
(3, '2022-11-10'),
(2, '2022-11-10'),
(2, '2022-11-09'),
(1, '2022-11-09'),
(4, '2022-11-08'),
(2, '2022-11-11'),
(4, '2022-11-10');


create table compra_detalle (
id int not null primary key auto_increment,
producto_id int not null,
compra_id int not null,
cantidad int not null,
foreign key (producto_id) references productos(id),
foreign key (compra_id) references compras(id)
);

insert into compra_detalle (producto_id, compra_id, cantidad)
values (3,1,2),
(6, 2, 10),
(2, 3, 4),
(5, 4, 1),
(1, 5, 4),
(6, 6, 6),
(3, 7, 5),
(4, 8, 3);

-- Consultas

-- ¿Cuántas compras han hecho mis clientes en noviembre de 2022?

select cantidad  from compra_detalle cd
inner join compras co
on cd.compra_id  = co.id 
where co.fecha_compra like '2022-11%'


-- ¿Cuál es el nombre y la empresa de mi proveedor de tomates?

select nombre_representante, nombre_empresa from proveedores p 
inner join productos prod 
on p.id = prod.proveedor_id 
where prod.tipoProducto = 'Tomate'



