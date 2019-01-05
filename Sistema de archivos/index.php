<?php  
//Abrir archivo
//r es lectura
//a+ es escritura
/*$archivo = fopen("fichero_texto.txt", "a+");
//Leer el contenido del archivo
while (!feof($archivo)) {
	$contenido = fgets($archivo);
	echo "".$contenido."</br>";
}
//Escribir
fwrite($archivo, "Soy un archivo de texto leído desde php");
//cerrar archivo
fclose($archivo);*/

//Copiar ficheros de texto
//copy("fichero_texto.txt", 'fichero_copiado.txt') or die ("Error al copiar");

//Renombrar ficheros
//rename('fichero_copiado.txt', 'archivoRecopiado.txt');

//Eliminar fichero de texto
//unlink('archivoRecopiado.txt') or die ('Error al borrar');

//Comprobar la existencia de archivos
if (file_exists("fichero_textso.txt")) {
	echo "El archivo existe!!";
}else{
	echo "El archivo no existe";
}
?>