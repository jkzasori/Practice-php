/*
SUBCONSULTAS:
- Son consultas que se ejecutan dentro de otras.
- Consiste en utilizar los resultados de la sunsulta para operar en la consulta principal.
- Jugando con las claves ajenas / foraneas.
*/
/*Se pone IN porque la subconsulta devolvera vrios resultados
LA consulta devulve los usuarios si existen ID en los usuarios de la tabla entradas
*/
# Sacar usuarios con entradas#
SELECT * FROM usuarios WHERE id IN (SELECT usuario_id FROM entradas);
# Sacar usuarios sin entradas#
SELECT * FROM usuarios WHERE id NOT IN (SELECT usuario_id FROM entradas);
# Sacar usuarios que tengan alguna entrada que en su titulo habla de GTA #
SELECT nombre, apellidos FROM  usuario
WHERE id 
IN (SELECT usuario_id FROM entradas WHERE titulo LIKE "%GTA%");

# Sacar todas las entradas de la categoria acción utilizando su nombre#
SELECT * From entradas WHERE categoria_id IN (SELECT id FROM categorias WHERE nombre = 'Accion');

# Mostrar las categorías con más de tres entradas #
SELECT * FROM categorias WHERE id IN (SELECT categoria_id from entradas GROUP BY categoria_id HAVING COUNT(categoria_id >= 3));

# Mostrar los usarios que crearon una entrada un martes #
SELECT * FROM USUARIOS WHERE id IN 
	(SELECT usuario_id FROM entradas WHERE DAYOFWEEK(fecha)=3);

# Mostrar el nombre el usuario ue tenga mas entradas #
 SELECT CONCAT(nombre, ' ', apellidos) AS 'EL usuario con mas entradas' FROM usuarios WHERE id (SELECT usuario_id FROm GROUP BY usuario_id ORDER BY COUNT(id) DESC LIMIT 1);

# Mostrar las categorias sin entradas #
SELECT * FROM categorias WHERE id NOT IN (SELECT categoria_id FROM entradas);