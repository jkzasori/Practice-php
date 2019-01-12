/*
Vistas:
Las podemos definir como una consulta almacena en la base de datos que
se utiliza como una tabla virtual.
No almacena datos sino que utiliza asociaciones y los datos 
originas de las tablas, de forma que siempre se mantiene actualizada.
*/

CREATE VIEW entradas_con_nombres AS 
SELECT e.id, e.titulo, u.nombre AS 'Autor', c.mombre AS 'Categoría'
FROM entradas e,
INNER JOIN usuarios u ON e.usuario_id = u.id
INNER JOIN categorias c ON e.categoria_id = c.id;

/*
Para borrar vistas se utiliza lo siguiente:
DROP VIEW entradas_con_nombres;
*/