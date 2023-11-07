CREATE SCHEMA rutas;
USE rutas;

CREATE TABLE ruta (
	id_ruta INT AUTO_INCREMENT NOT NULL,
    nombre VARCHAR (50) NOT NULL,
    ubicación VARCHAR (50) NOT NULL,
    tipo VARCHAR (50),
    duracion INT,
    dificultad VARCHAR (50),
    esfuerzo VARCHAR (50),
    descripcion VARCHAR (250),
    PRIMARY KEY (id_ruta), 
    CONSTRAINT 			
			FOREIGN KEY (ubicación)
            REFERENCES clima (sierra)); 

CREATE TABLE clima (
	sierra VARCHAR (50) NOT NULL,
    temp_maxima SMALLINT NOT NULL,
    temp_minima SMALLINT NOT NULL, 
    fecha_datos DATE,
    PRIMARY KEY (sierra), 
    CONSTRAINT 			
			FOREIGN KEY (sierra)
            REFERENCES rutas (ubicacion)); 