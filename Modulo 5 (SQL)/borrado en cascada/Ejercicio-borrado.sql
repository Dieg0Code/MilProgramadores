CREATE DATABASE cascada;
USE cascada;

CREATE TABLE principal(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL
);

CREATE TABLE relacionada(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    principal_id INT NOT NULL,
    CONSTRAINT `fk_relacionada_principal_id` FOREIGN KEY (principal_id)
    REFERENCES `principal`(id) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO `principal` (`nombre`) VALUES
('principal_1'),
('principal_2'),
('principal_3'),
('principal_4');

INSERT INTO `relacionada`(`nombre`,`principal_id`) VALUES
('relacionada_1',1),
('relacionada_2',2),
('relacionada_3',3),
('relacionada_4',4),
('relacionada_5',1),
('relacionada_6',2),
('relacionada_7',3),
('relacionada_8',4),
('relacionada_9',1),
('relacionada_10',2),
('relacionada_11',3),
('relacionada_12',4),
('relacionada_13',4),
('relacionada_14',2),
('relacionada_15',3),
('relacionada_16',4),
('relacionada_17',2),
('relacionada_18',2),
('relacionada_19',3),
('relacionada_20',4),
('relacionada_21',4),
('relacionada_22',2),
('relacionada_23',3),
('relacionada_24',4),
('relacionada_25',1),
('relacionada_26',1),
('relacionada_27',3),
('relacionada_28',1);
