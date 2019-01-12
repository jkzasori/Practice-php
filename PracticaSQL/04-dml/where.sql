# CONSULTA CON UNA CONDICION #
SELECT * FROM usuarios WHERE email = 'admin@admin.com';
/*
OPERADORES DE COMPARACIÓNs
Igual 			=
Distinto 		!=
Menor 			<
Mayor 			>
Menor o igual 	<=
Mayor o igual 	>=
Entre 			between A and B
EN 				in
Es nulo 		is null
No nulo 		is not null
Como			like
No es como 		not like 
*/

/*
OPERADORES LÓGICOS
O 		OR
Y 		AND
NO 		NOT
*/
/*
COMODINES:
Cualquier cantidad de carácteres: %
UN caracter desconocido: _
*/

# EJEMPLOS #

# 1. Mostrar Nobre y apellidos de todos los usuarios registrados en 2019 #
SELECT nombre, apellidos FROM usuarios WHERE YEAR(fecha) = 2019;

# 2. Mostrar Nobre y apellidos de todos los usuarios que no se han registrados en 2019 #
SELECT nombre, apellidos FROM usuarios WHERE YEAR(fecha) != 2019 OR ISNULL(fecha);

# 3. Mostrar el email de los usuarios cuyo apellido contenga la letra A y que su contraseña sea 1234 #
SELECT email from usuarios WHERE apellidos LIKE '%a%' AND password = '1234';

# 4. Sacar todos los registros de la tabla usuarios cuyo año sea PAR #
SELECT * FROM usuarios WHERE (YEAR(fecha)%2 = 0);

# 5. Sacar todos los registros de la tabla usuario cuyo nombre tenga más de 
# 5 letras y que se hayan registrado antes de 2010, y mostrar el nombre en mayúscula#
SELECT UPPER(nombre), apellidos FROM usuarios WHERE (LENGTH(nombre) > 5) AND (YEAR(FECHA) < 2020)

#LIMIT limita el numero de registros que se muestran, si sele pone dos numeros saca entre un rango
SELECT * FROM usuarios LIMIT 1;
SELECT * FROM usuarios LIMIT 2,3;
