<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Subir Archivos PHP</title>
</head>
<body>
	<h1>Subir Imágenes con PHP</h1>
	<form action="upload.php"  method="post" enctype="multipart/form-data">
		<input type="file" name="archivo" />
		<input type="submit" name="" value="Enviar">
	</form>
	<h1>Listado de imágenes</h1>
	<?php 
	$gestor = opendir('./images');
	if ($gestor):
		while (($image = readdir($gestor)) !== false):
			if ($image != '.' && $image != '..'):
				echo "<img src='images/$image' width='200px' /></br>";
			endif;
		endwhile;
	endif;

	 ?>
</body>
</html>