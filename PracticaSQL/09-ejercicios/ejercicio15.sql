/*
15. Mostrar los clientes que más encargos han hecho y mostrar cuantos hicieron
*/

SELECT cliente_id, COUNT(id) from encargos Group BY cliente_id order by 2 desc limit 2;