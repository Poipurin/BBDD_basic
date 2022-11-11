-- relaciones

CREATE TABLE proveedores (
id INT PRIMARY KEY NOT NULL auto_increment,
nombre varchar (100) not null,
rut varchar (100) not null
);

create table direccion (
id int PRIMARY KEY NOT NULL auto_increment,
calle varchar (100) not null,
numero int not null,
sector varchar(100) not null,
ciudad varchar (100) not null,
codigo_postal int,
proveedores_id int not null
);

-- agregar fk en un paso / references tabla (id)

alter table direccion
add constraint fk_proveedor_id
foreign key (proveedores_id) REFERENCES proveedores (id); 

insert into proveedores (nombre, rut)
values ('Pepito', '1241'), ('Perri', '1244');

insert into proveedores (nombre, rut)
values ('Uma', '423535'), ('Flera', '112442');
insert into direccion  (calle, numero, sector, ciudad, codigo_postal, proveedores_id)
values ('Juanin', 1241, 'RM', 'Santiago', 1231, 1), ('iggsy', 1221, 'RM', 'Santiago', 1231, 2) ;

insert into direccion  (calle, numero, sector, ciudad, codigo_postal, proveedores_id)
values ('prip', 54757, 'RM', 'Santiago', 325, 3), ('lit', 3523, 'RM', 'Santiago', 54764, 4) ;
insert into direccion  (calle, numero, sector, ciudad, codigo_postal, proveedores_id)
values ('elle',46543, 'RM', 'Renca', 1231, 1), ('ephra', 345, 'RM', 'Santiago', 234, 1) ;

insert into proveedores (nombre, rut)
values ('Poi', '198765-2');

select * from proveedores; 

select * from direccion; 

-- slq join // encontrar registros en común entre dos o más tablas

select * from proveedores p 
inner join direccion d 
on p.id = d.proveedores_id; -- en común

-- en la tabla 

select * from proveedores p 
inner join direccion d 
on p.id = d.proveedores_id
where p.id = 1; -- filtro o condición

-- direcciones p 1	
select d.* from proveedores p 
inner join direccion d 
on p.id = d.proveedores_id
where p.id = 1;

-- solo calle, número y nombre del p
select d.id, d.calle, d.numero, p.nombre
from proveedores p 
inner join direccion d 
on p.id = d.proveedores_id
where p.id = 1;


-- left join
select d.id, d.calle, d.numero,p.nombre
from proveedores p 
left join direccion d 
on p.id = d.proveedores_id;

-- right join
select d.id, d.calle, d.numero,p.nombre
from proveedores p -- tabla a
right join direccion d -- tabla b
on p.id = d.proveedores_id;


-- pokemones fuego


select * from mis_pokemones; 
select * from pokemoneskanto p ; 


select * from mis_pokemones mp 
left join pokemoneskanto p 
on mp.pokedex  = p.pokedex -- dato referecial a lo que comparten las tablas (en este caso pokedex en mp y p)
 where p.tipo1 = 'Fuego'; 

-- mios de t1 veneno y t2 tierra
select * from mis_pokemones mp 
left join pokemoneskanto p
on mp.pokedex  =  p.pokedex
where p.tipo1 = 'Veneno' and p.tipo2 = 'tierra';


select * from mis_pokemones mp
inner join pokemoneskanto p
on mp.pokedex  = p.pokedex
where nombre = 'Charmander';

-- cuantos charizard tengo
select * from mis_pokemones mp
left join pokemoneskanto p
on mp.pokedex  = p.pokedex
where nombre = 'Charizard';

-- cuantos de hay agua en kanto
select * 
from pokemoneskanto p 
where p.tipo1 = 'Agua';

-- cuantos pokemones capturé en estación central
select * 
from mis_pokemones mp  
right join pokemoneskanto p 
on mp.pokedex = p.pokedex
where lugar like 'estaci%';

-- pokemones que haya capturado en san...
select * from mis_pokemones mp  
left join pokemoneskanto p 
on mp.pokedex = p.pokedex
where lugar like 'san%';


-- tipo agua mios
select * from mis_pokemones mp 
inner join pokemoneskanto p  
on mp.pokedex  = p.pokedex
where p.tipo1 = 'Agua';


-- de los pokemones que capture, los que no tengan tipo2
select * from mis_pokemones mp  
right join pokemoneskanto p 
on mp.pokedex  = p.pokedex
where length (p.tipo2)=0;


