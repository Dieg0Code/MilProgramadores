-- DB Ordenes
-- ----------------
CREATE DATABASE ordenes CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE ordenes;
-- ----------------
-- tablas
-- ----------------
CREATE TABLE pais(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    CONSTRAINT `Unique_pais_nombre` UNIQUE (nombre)
);

CREATE TABLE ciudad(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    pais_id INT NOT NULL,
    CONSTRAINT `fk_ciudad_pais_id` FOREIGN KEY (pais_id)
    REFERENCES `pais`(id)
);

CREATE TABLE cliente(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    telefono INT,
    ciudad_id INT,
    CONSTRAINT `fk_cliente_ciudad_id` FOREIGN KEY (ciudad_id)
    REFERENCES `ciudad`(id)
);

CREATE TABLE orden(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    fecha DATE NOT NULL,
    cliente_id INT NOT NULL,
    CONSTRAINT `fk_orden_cliente_id` FOREIGN KEY (cliente_id)
    REFERENCES `cliente`(id)
);

CREATE TABLE producto(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    precio INT NOT NULL
);

CREATE TABLE detalle(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    orden_id INT NOT NULL,
    producto_id INT NOT NUll,
    cantidad INT NOT NULL,
    CONSTRAINT `fk_detalle_orden_id` FOREIGN KEY (orden_id) REFERENCES `orden`(id),
    CONSTRAINT `fk_detalle_producto_id` FOREIGN KEY (producto_id) REFERENCES `producto`(id)
);
-- ----------------
-- Insert registros
-- ----------------
INSERT INTO `pais`(`nombre`) VALUES
('Chile'),('Argentina'),('Peru'),('Uruguay')
;

INSERT INTO `ciudad`(`nombre`,`pais_id`) VALUES
('Santiago',1),('Concepcion',1),('La Serena',1),('Temuco',1),
('valdivia',1),('talca',1),('valparaiso',1),('Antofagasta',1),
('Rosario',2),('Cordoba',2),('Salta',2),('La Plata',2),
('Buenos Aires',2),('Mendoza',2),('Ushuaia',2),('Rio Gallegos',2),
('Lima',3),('Cuzco',3),('Arequipa',3),('Tacna',3),
('Cajamarca',3),('Chimbote',3),('Huaraz',3),('Pisco',3),
('Montevideo',4),('Punta del Este',4),('Carmelo',4),('Piriapolis',4),
('Las piedras',4),('Maldonado',4),('Rivera',4),('Fray Bentos',4)
;

INSERT INTO `producto`(`nombre`,`precio`) VALUES 
('Violin',23000),('Clarinet',34000),('Saxophone',70000),('Trumpet',45000),
('Ukelele',13000),('Electric Guitar',120000),('Organ',230000),('Acoustic Guitar',83000),
('Electric Acustic Guitar',102000),('Harmonica',8000),('Drums',240000),
('bagpipes',167000),('Oboe',86000),('Xylophone',48000)
;

INSERT INTO `cliente`(`nombre`,`apellido`,`ciudad_id`) VALUES 
('Roland','Bechtelar',15),('Cleo','Nitzsche',null),('Sanda','Grant',6),
('Rogelio','Orn',4),('Samuel','Reilly',32),('Denver','Waters',null),
('Emanuel','Kozey',23),('Carley','Haag',28),('Rico','Berge',1),
('Bryant','Lehner',21),('Season','Reilly',14),('Ethelene','Considine',26),
('Leslie','Sporer',null),('Suzette','Rowe',22),('Marcelle','Yost',32),
('Donald','Klein',18),('Babara','Wyman',30),('Lelah','Torphy',null),
('Patricia','Lowe',6),('Chong','Fadel',null),('Corey','Sanford',24),
('Will','Fisher',13),('Magan','Cassin',19),('Renetta','Mraz',26),
('Chance','Mueller',5),('Colin','Borer',7),('Rodney','Johnson',27),
('Herman','Greenholt',18),('Theron','Miller',30),('Pasty','Weber',1),
('Garfield','Farrell',null),('Cher','Reichert',23),('Sammie','Strosin',18),
('Kristofer','Mayer',27),('Tyrone','Romaguera',null),('Madeleine','Beier',6),
('Karena','Abernathy',15),('Luciano','Kassulke',32),('Marybelle','Little',9),
('Shiela','Bayer',4),('Kyla','Connelly',4),('Lessie',"D'Amore",10),
('Rocky','Ullrich',3),('Isaac',"O'Connell",20),('Margarite','Considine',7),
('Shenika','Prohaska',23),('Ismael','Murray',null),('Jamie','Wisoky',14),
('Ward','Lehner',30),('Shawanna','Stehr',28)
;

INSERT INTO `orden`(`fecha`,`cliente_id`) VALUES 
('1976-12-04',8),('1978-11-22',41),('1991-03-21',45),
('1971-09-29',14),('2007-07-04',2),('1972-06-02',18),
('1985-11-10',45),('1988-10-05',11),('1971-01-31',42),
('1993-04-15',22),('1985-04-11',17),('1990-08-28',39),
('1997-02-04',20),('1995-10-04',1),('1995-02-08',7),
('1980-11-22',17),('2007-11-04',43),('1971-02-03',2),
('2007-02-19',25),('2018-05-11',4),('1971-03-06',29),
('1994-05-08',27),('1995-01-01',47),('2006-09-10',10),
('2012-01-05',36),('1971-10-25',42),('1991-11-30',50),
('2013-07-14',47),('1970-02-03',42),('2005-02-21',40)
;

INSERT INTO `detalle`(`orden_id`,`producto_id`,`cantidad`) VALUES 
(29,8,3),(11,9,3),(5,3,6),(21,3,4),(8,3,1),(5,10,2),(5,6,4),
(18,13,1),(23,8,1),(11,6,3),(28,2,4),(14,7,5),(23,13,4),(16,12,7),
(6,3,1),(13,9,6),(11,4,3),(18,6,4),(30,7,1),(6,14,3),(1,2,4),
(10,14,5),(3,10,7),(30,7,2),(1,6,5),(14,4,1),(25,8,4)
;