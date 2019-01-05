<?php 
/*Ejercicio 3. 
Hacer una interfaz de usuario(formulario) con dos inputs y 4 botones
uno para sumar, restar, dividir y multiplicar
*/
$resultado = false;
if (isset($_POST['n1']) && isset($_POST['n2'])) {
	$resultado = false;

	if (isset($_POST['sumar'])) {
		$resultado = "El resultado es: ".($_POST['n1']+$_POST['n2']);
	}
	if (isset($_POST['restar'])) {
		$resultado = "El resultado es: ".($_POST['n1'] - $_POST['n2']);
	}
	if (isset($_POST['multiplicar'])) {
		$resultado = "El resultado es: ".($_POST['n1'] * $_POST['n2']);
	}
	if (isset($_POST['dividir']) and $_POST['n2'] != 0) {
		$resultado = "El resultado es: ".($_POST['n1'] / $_POST['n2']);
	}
}
?>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="utf-8">
	<title>Calculadora en PHP</title>
</head>
<body>
	<h1>Calculadora PHP</h1><br/>
	<form action="" method="POST">
		<label for="n1">Número 1</label>
		<input type="number" name="n1" />
		<br/><br/>
		<label for="n2">Número 2</label>
		<input type="number" name="n2" />
		<br/><br/>
		<input type="submit" name="sumar" value="Sumar">
		<input type="submit" name="restar" value="Restar">
		<input type="submit" name="multiplicar" value="Multiplicar">
		<input type="submit" name="dividir" value="Dividir">
	</form>
	<?php 
	if ($resultado != false):
		echo "<h2>$resultado</h2>";
	endif;
	?>
</body>
</html>