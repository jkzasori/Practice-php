<?php 
/*
Ejercicio 2.
1. Una función
2. Validar un email con filter_var
3. Recoger variable por get y validarla
4. Mostrar el resultado
*/
function ValidarEmail($email){
	$status = "No valido.";
	if (!empty($email) && filter_var($email, FILTER_VALIDATE_EMAIL)) {
		$status = "válido";
	}
	return $status;
}

if (isset($_GET['email'])) {
	echo ValidarEmail($_GET['email']);
}else{
	echo "Pasa por get un email...";
}
?>

