Create database trivago;
use trivago;

create table ciudad(
    id int primary key not null auto_increment,
    nombre VARCHAR(100) not null,
    codigo int not null
);

create table hotel(
    id int primary key not null,
    nombre VARCHAR(200) not null,
    direccion VARCHAR(200) not null,
    telefono VARCHAR(200) not null,
    estrellas int not null,
    estacionamiento boolean not null,
    piscina boolean not null,
    restaurante boolean not null,
    mascotas boolean not null,
    ciudad_id int not null,
    CONSTRAINT `fk_hotel_ciudad_id` FOREIGN KEY (ciudad_id)
    REFERENCES `ciudad`(id) ON DELETE CASCADE ON UPDATE CASCADE
);