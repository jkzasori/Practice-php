/*
6. Visualizar el nombre y los apelldos de los vendedores en una misma columna, su fecha de registro 
y el día de la semana en la que se registraron.
*/

SELECT CONCAT(nombre, ' ', apellidos) AS 'nombre y apellidos', fecha, DAYNAME(fecha) FROM vendedores;