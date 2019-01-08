/*
int(n° caracteres) Entero
integer(n° caracteres) Entero (máximo 255 caracteres)
varchar(n° caracteres) STRING /ALFANUMERICO (máximo 255)
char(n° caracteres) STRING /ALFANUMERICO (máximo 255 caracteres)
float(n° cifras, n° decimales) DECIMAL / COMA FLOTANTE
//String más grandes
TEXT  Permite guardar 65535 caracteres
MEDIUMTEXT Permite guardar 16 millones caracteres
LONGTEXT Permite guardar 4 billones de caracteres
date, time, timestamp

//Enteros más grandes
MEDIUMINT
BIFINT
*/
/*drop nombretabla sirver para borrar la tabla*/
/*show table muestra las tablkas creadas*/
CREATE TABLE usuarios(
	id int(11) auto_increment not null,
	nombre varchar(100) not null,
	apellidos varchar(255) null,
	email varchar(100),
	password varchar(255),
	CONSTRAINT pk_usuarios PRIMARY KEY(id)
);