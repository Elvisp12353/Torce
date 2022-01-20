<?php
#Recoge los datos del formulario
$name = $_POST["Name"];
$lastname = $_POST["LastName"];
$email = $_POST["Email"];
$password = $_POST["Password"];
$profile = $_POST["ProfilePic"];
$code = "";
$active = "";

#Coneccion a la BD
$connexion = mysqli_connect("localhost","root","");
if( mysqli_connect_errno())
  {
      echo "Hubo un problema con la base de datos error al conectar";
      exit() ;
  }
  mysqli_select_db($connexion,"Torce") or die ("No se encuentra la Base de datos");
  mysqli_set_charset($connexion,"utf8");

#Insertar los datos del nuevo usuario

$instruccion_SQL = "INSERT INTO usuarios VALUES (Null,'$name','$lastname','$email','$password',Null)";
$resultado = mysqli_query($connexion,$instruccion_SQL);
if($resultado == FALSE)
{
    echo "error en la consulta";
    echo $instruccion_SQL;
}   

#cierra coneccion
mysqli_close($connexion);


/* WIP (work in progress) To test in real server
#Correo de activacion 
$to      = $email;
$subject = "Correo de Confirmacion";
$message = 'Hola '.$name."\r\n"." Sigue este vinculo para activar tu cuenta"."\r\n\r\n"." http://tupagina.com/confirm.php?usuario=".$email."&code=".$code."\r\n";
$headers = 'De: (elvisp12326@gmail.com)' . "\r\n" ;
mail($to, $subject, $message, $headers);

#Presenta Mensaje
Echo "Se ha enviado un mensaje de confirmaciona su correo "
*/
?>