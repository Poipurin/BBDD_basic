
-- inicio tablas productos

create table categorias (
id int not null primary key auto_increment,
nombre varchar (20) not null,
descripcion varchar (100)
);

create table disenos (
id INT PRIMARY KEY NOT NULL auto_increment,
serigafia varchar (100) not null
);

create table tallajes (
id INT PRIMARY KEY NOT NULL auto_increment,
talla varchar (3) not null
);

create table productos (
id INT PRIMARY KEY NOT NULL auto_increment,
nombre varchar (50) not null,
precio int not null,
categoria_id int not null,
diseno_id int not null,
tallaje_id int,
foreign key (categoria_id) references categorias(id),
foreign key (diseno_id) references disenos(id),
foreign key (tallaje_id) references tallajes(id)
);

-- fin tablas productos
-- inicio tablas usuarios

create table direcciones (
id int not null primary key auto_increment,                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
calle varchar(100) not null,
numero int not null,
comuna varchar (50) not null,
ciudad varchar (50) not null,
region varchar (20) not null,
departamento varchar (20),
codigoPostal varchar (15)
); 

create table usuarios (
id int not null primary key auto_increment,
nombre varchar (20) not null,
apellido varchar (20) not null,
correo varchar (50) not null,
telefono varchar (11) not null,
direccion_id int not null,
foreign key (direccion_id) references direcciones(id)
);

create table clientes (
id int not null primary key auto_increment,
empresa boolean,
rut varchar (20),
usuario_id int not null,
foreign key (usuario_id) references usuarios(id)
);
create table roles (
id int not null primary key auto_increment,
nombre varchar (20) not null
);

create table administradores (
id int not null primary key auto_increment,
contrasena varchar(20) not null,
rol_id int not null,
usuario_id int not null,
foreign key (usuario_id) references usuarios(id),
foreign key (rol_id) references roles(id)
);

create table dueno (
id int not null primary key auto_increment,
contrasena varchar(20) not null,
rol_id int not null,
usuario_id int not null,
foreign key (usuario_id) references usuarios(id),
foreign key (rol_id) references roles(id)
);

-- fin tablas usuarios
-- inicio tablas acciones

create table mediosPago (
id INT PRIMARY KEY NOT NULL auto_increment,
nombre varchar (20) not null,
descripcion varchar (100)
);

create table carrito (
id INT PRIMARY KEY NOT NULL auto_increment,
cantidad int not null,
producto_id int not null,
foreign key (producto_id) references productos(id)
);

create table envios (
id INT PRIMARY KEY NOT NULL auto_increment,
tipoEnvio varchar (20) not null,
costoEnvio int not null,
regionEnvio varchar (20),
medioPago_id int not null,
carrito_id int not null,
cliente_id int not null,
total int,
foreign key (medioPago_id) references mediosPago(id),
foreign key (carrito_id) references carrito (id),
foreign key (cliente_id) references clientes (id)
);

create table envio_productos (
id INT PRIMARY KEY NOT NULL auto_increment,
envio_id int not null,
producto_id int not null,
cant_producto int,
subtotal int,
foreign key (envio_id) references envios(id),
foreign key (producto_id) references productos(id)
);

create table DTE (
id INT PRIMARY KEY NOT NULL auto_increment,
observacion varchar (50),
envio_id int not null,
foreign key (envio_id) references envios(id)
);


-- fin tablas acciones 

-- inserciones


