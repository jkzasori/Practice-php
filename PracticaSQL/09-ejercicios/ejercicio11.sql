/*
11. Visualizar todos los cargos de los vendedores y el número de los vendedores que hay en cada cargo
*/

SELECT cargo, COUNT(id) FROM vendedores GROUP BY cargo;