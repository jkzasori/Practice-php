# CONSULTAS AGRUPAMIENTO #
SELECT COUNT(titulo) AS 'Numero de entradas', categoria_id FROM entradas GROUP BY categoria_id;
# CONSULTAS AGRUPAMIENTO CON CONDICIÓN HAVING#
FROM entradas GROUP BY categoria_id HAVING cCOUNT(titulo) >= 4;

/*
AVG 	Sacar la media
COUNT 	Contar el número de elementos
MAX 	Valor máximo del grupo
MIN 	Valor Mínimo del grupo
SUM 	Sumar todo el contenido del grupo
*/

SELECT AVG(id) AS 'MEdia de entradas' FROM entradas;
SELECT id AS 'Usuario máximo ID', titulo FROM entradas WHERE id=(SELECT MAX(id) FROM entradas);
SELECT id AS 'Usuario mínimo ID', titulo FROM entradas WHERE id=(SELECT Min(id) FROM entradas)
SELECT SUM(id) AS 'Suma de ID' FROM entradas;
