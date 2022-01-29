<?php
#Recoge los datos del formulario
$email = $_POST["Email"];
$password = $_POST["Password"];

#Coneccion a la BD
$connexion = mysqli_connect("localhost","root","");
if( mysqli_connect_errno())
  {
      echo "Hubo un problema con la base de datos error al conectar";
      exit() ;
  }
  mysqli_select_db($connexion,"Torce") or die ("No se encuentra la Base de datos");
  mysqli_set_charset($connexion,"utf8");

#Consulta de datos
$consulta = mysqli_query ($connexion, "SELECT * FROM usuarios  WHERE email = '$email' AND password = '$password'");

if(!$consulta){
    // si la consulta falla evitar que el código se siga ejecutando
    echo mysqli_error($mysqli);       
    exit;
    }
#validar la contraseña 
if($email = mysqli_fetch_assoc($consulta)) {
    Echo "el usuario y la Contraseña son correctas";
    } 
else {
    Echo "Usuario incorrecto o no existe";
    }
?>

