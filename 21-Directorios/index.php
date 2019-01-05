<?php 
//mkdir Permite crear carpeta
//is_dir comprueba existencia de direcctorio
if (!is_dir('Mi_carpeta')) {
	mkdir('Mi_carpeta', 0777) or die('no se puede crear la carpeta');	
}else{
	echo "Ya existe la carpeta";
}
//rmdir borra carpetas
//rmdir('Mi carpeta');

echo "<hr> <h1>Contenido Carpeta</h1>";
if ($gestor = opendir('./Mi_Carpeta')) {
	while (false !== ($archivo = readdir($gestor))) {
		if ($archivo != '.' && $archivo != '..') {
			echo $archivo."</br>";
		}
	}
}
 ?>