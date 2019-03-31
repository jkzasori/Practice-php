<?php 
//Conectar a la bd
$conexión = mysqli_connect("localhost", "root", "", "concesionario");
if (mysqli_connect_errno()) {
	echo "fallo conexión".mysqli_connect_error();;
}else{
	echo "Buena conexión";
}

//COnsultas para configurar la condificación de caracteres
mysqli_query($conexion, "SET NAMES 'utf8'");

//COnsultas SELECT desde PHP
$query = mysqli_query($conexion, 'SELECT * FROM clientes');
/*while (($clientes = mysqli_fetch_assoc($query)) {
	echo $clientes['nombre']."<br>";
}*/

//insertar en la BD desde PHP
$sql = 'INSERT INTO notas VALUES(null, "Notas desde PHP", "Esto es una nota desde php", "green")'
$insert = mysql_query($conexion, $sql);

if ($insert) {
	echo "Datos insertados correctamente";
}else{
	echo "Error: ".mysqli_error($conexion);
}
?>
