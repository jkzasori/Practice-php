/*
14. Visualizar las unidades totales vendidas de cada coche a cada cliente.
Mostrando el nombre del coche, número de cliente y la suma de unidades vendidas
*/
SELECT co.modelo, cl.nombre, SUM(e.cantidad) from encargos e 
INNER JOIN coches co ON co.id = e.coche_id
INNER JOIN clientes cl ON cl.id = e.cliente_id
GROUP BY e.coche_id, e.cliente_id;