Create Database apple_service;
use apple_service;

CREATE TABLE categoria(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL
);

CREATE TABLE producto(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    modelo VARCHAR(100) NOT NULL,
    procesador VARCHAR(100) NOT NULL,
    ram INT NOT NULL,
    disco INT NOT NULL,
    precio INT NOT NULL,
    categoria_id INT NOT NULL,
    CONSTRAINT `fk_producto_categoria_id` FOREIGN KEY (categoria_id)
    REFERENCES `categoria`(id) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO `categoria` (`nombre`) VALUES
('notebook'),('tablet'),('smartphone'),
('all in one'),('desktop'),('smartwatch'),
('tv'),('audio');

INSERT INTO `producto` (`modelo`,`procesador`,`ram`,`disco`,`precio`,`categoria_id`) VALUES
('macbook pro 15"','intel',4,500,600000,1),
('ipad mini 4','A8',2,128,350000,2);