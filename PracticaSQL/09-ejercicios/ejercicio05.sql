/*
5. Mostrar todos los vendedores con su nombre y el número de días que llevan en el concesiorionario
*/

SELECT nombre, DATEDIFF(CURDATE(), fecha) AS 'Días' FROM vendedores;