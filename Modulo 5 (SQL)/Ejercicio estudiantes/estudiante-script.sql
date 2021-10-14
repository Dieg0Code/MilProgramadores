-- Crear base de datos
CREATE DATABASE consultas;
-- usar base de datos creada
USE consultas;

-- ----------------------------
-- tablas
-- ----------------------------

CREATE TABLE estudiante(
    rut VARCHAR(10) PRIMARY KEY NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    apellido_paterno VARCHAR(50) NOT NULL,
    apellido_materno VARCHAR(50) NOT NULL,
    celular VARCHAR(9) NULL,
    email VARCHAR(100) NULL,
    `asiste?` BOOLEAN DEFAULT false
);

CREATE TABLE modulo(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    horas INT NOT NULL,
    CONSTRAINT `Unique_nombre` UNIQUE (nombre)
);

CREATE TABLE estudiante_nota_modulo(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    estudiante_rut VARCHAR(10) NOT NULL,
    modulo_id INT NOT NULL,
    nota DOUBLE NOT NULL,
    CONSTRAINT `fk_estudiante_rut` FOREIGN KEY (estudiante_rut) REFERENCES `estudiante`(rut),
    CONSTRAINT `fk_modulo_id` FOREIGN KEY (modulo_id) REFERENCES `modulo`(id)
);

-- ----------------------------
-- registros
-- ----------------------------
INSERT INTO `estudiante` VALUES
('17357806-7','ALEX','ALVARADO','VARGAS',null,null,false),
('17658842-k','ANDREA','TEREUCÁN','SANDOVAL',null,null,false),
('18239279-0','ANDRÉS','PÉREZ','LOAIZA',null,null,false),
('20200632-9','BENJAMÍN','GONZÁLEZ','HIDALGO','949708640','benjamin.ignacio.1999.0@gmail.com',false),	
('18964803-0','CAMILA','BAÑARES','SANTIBÁÑEZ','935358446','camila.banares.s@gmail.com',true),	
('17357597-1','CARLOS', 'OYARZÚN','CONCHA',null,null,false),
('19337877-3','DIEGO','OBANDO','AGUILERA','940516227','diegoobando20@gmail.com',true),
('15759006-5','FELIPE','ANGULO','ACHURRA',null,null,true),			
('13164197-4','HUGO','GALLARDO','OYARZÚN','991491139','hgallar@hotmail.com',true),
('19269493-0','MARCELO','VALENZUELA','OPORTO','989344868','nico.valenzuelaop@gmail.com',true),
('13734929-9','MARCOS','PROBOSTE','LEAL','963741283','mprobost@gmail.com',true),
('19199763-8','MAURO','HUAIQUIMILLA','VALDERAS',null,null,false),	
('13734486-6','NELSON','HERNÁNDEZ','MARTÍNEZ','85038747','andres.hernandez.nahm@gmail.com',true),	
('19085855-3','PATRICIA','ORTEGA','BARRERA',null,null,true),		
('16338771-9','PATRICIO','SÁEZ','SALDIVIA',null,null,false),
('17659385-7','RAÚL','BARRÍA','ARRIAGADA','953795800','b.arriagadaraul@gmail.com',true),
('17197980-3','ROSA','GUZMÁN','LEMUY','954415128','rosaaguzmanl@gmail.com',true),	
('20081094-5','SEBASTIÁN','POBLETE','OBANDO','30551593','sebapoba@gmail.com',true),	
('20265702-8','SERGIO','SOTO','OJEDA','986017849','simon_soto_26@hotmail.com',true),
('18492866-3','YOSSELIN','CÁRDENAS','HERNÁNDEZ',null,null,false),					
('17532743-6','CARLOS','PERALTA','VERA','968457638','cperaltavera@gmail.com',true),	
('17116805-8','ALEJANDRA','NAVARRO','MEDINA','974663635','alejandra.navarromedina@gmail.com',true),
('10954762-k','YOHANA','YUNGE','LUTTECKE','966900361','yohanayunge@hotmail.com',true),
('16587538-9','NELSON','ONDREL','GUILLÉN','963679995','nelsonondrel@gmail.com',false),
('18492146-4','JOCELYN','MARIANTE','CAMPOS','988372336','jocelynmariantecampos@gmail.com',false);

INSERT INTO `modulo` (`nombre`,`horas`) VALUES
('TEORÍA DE CONJUNTOS Y LÓGICA PROPOSICIONAL',40),
('INTRODUCCIÓN A LA INFORMÁTICA',40),
('GESTIÓN DE REQUISITOS PARA LA CONSTRUCCIÓN DE SOFTWARE',40),
('DESARROLLO DE SOFTWARE',80),
('DISEÑO DE BASE DE DATOS',80),
('PROFUNDIZACIÓN DEL DESARROLLO DE SOFTWARE',80),
('INTEGRACIÓN DE MÓDULOS DE SOFTWARE',40),
('SOPORTE TÉCNICO DE APLICACIONES DE SOFTWARE',40);
