# MOSTRAR TODOS LOS REGISTROS / FILAS DE UNA TABLA #
SELECT email, nombre, apellido FROM usuario;

# MOSTRAR TODOS LOS CAMPOS #
SELECT * FROM usuarios;

# OPERADORES ARITMETICOS #
SELECT email, (id+7) AS 'OPERACIONS' FROM usuarios;

# FUNCIONES MATEMÁTICAS #
SELECT ABS(7.88) AS 'OPERACIONS' FROM usuarios;
SELECT CEIL(7.88) AS 'OPERACIONS' FROM usuarios;
SELECT FLOOR(7.88) AS 'OPERACIONS' FROM usuarios;
SELECT PI() AS 'OPERACIONS' FROM usuarios;
SELECT RAND() AS 'OPERACIONS' FROM usuarios;
SELECT ROUND(7.88) AS 'OPERACIONS' FROM usuarios;
SELECT ROUND(7.88, 1) AS 'OPERACIONS' FROM usuarios;
SELECT AQLRT(7.88) AS 'OPERACIONS' FROM usuarios;
SELECT TRUNCATE(7.88, 0) AS 'OPERACIONS' FROM usuarios; /*Quitar decimales*/
SELECT ROUND(id, 2) AS 'OPERACIONS' FROM usuarios;

# FUNCIONES PARA TEXTOS #
SELECT UPPER(nombre) FROM usuarios;
SELECT LOWER(nombre) FROM usuarios;
SELECT CONCAT(nombre. ' '. apellido) FROM usuarios; /* Concatena campos y caenas */
SELECT LENGHT(nombre) FROM usuarios; /*Saca longitud de caracteres*/
SELECT TRIM(nombre) FROM usuarios; /* Borra espacios vacios por delante y por detrás que tenga el campo*/

# FUNCIONES PARA FECHAS #
SELECT email, fecha, CURDATE() AS 'Fecha Actual' FROM usuarios; /* Saca la fecha actual*/
SELECT email, fecha, DATEDIFF(fecha, CURDATE()) AS 'Feccha DIferecnia' FROM usuarios; /* Saca la diferencia entre la fecha actual y la ingresada */
SELECT email, fecha, DAYNAME(fecha) AS 'Nombre del día' FROM usuarios; /* Saca el día el nombre*/
SELECT email, DAYOFMONTH(fecha) AS '# del mes' FROM usuarios; /* Saca el mes en número*/
SELECT email, DAYOHWEEK(fecha) AS '# del día' FROM usuarios; /* Saca el día de la semana en número*/
SELECT email, DAYOFYEAR(fecha) AS 'Dia del año' FROM usuarios; /* Saca el día del año enque se ingresó e registro en numero*/
SELECT email, MONTH(fecha) AS 'Nombre del día' FROM usuarios; /* Saca el mes*/
SELECT email, YEAR(fecha) AS 'Nombre del día' FROM usuarios; /* Saca el año*/
SELECT email, CURTIME() AS 'Nombre del día' FROM usuarios; /* Saca la hora actual*/
SELECT email, SYSDATE() AS 'Nombre del día' FROM usuarios; /* Saca la fehca acdel sistema operativo*/
SELECT email, DATE_FORMAT(fecha, '%d-%m-%Y') FROM usuarios; /* Saca la fecha en formato tipico EN español*/

# FUNCIONES GENERALES #
SELECT email, ISNULL(apellidos) FROM usuarios; /* Saca si son nullos en algunos de los casos*/
SELECT email, STRCMP('hola', 'hola') FROM usuarios;  /* distingue si dos valosres son iguales o no */
