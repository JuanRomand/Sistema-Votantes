<?php 

$conexion=mysqli_connect("localhost", "root", "", "votacionbdd");

$nombre = $_POST['nombre'];
$alias = $_POST['alias'];
$rut = $_POST['rut'];
$email = $_POST['email'];
$candidato = $_POST['cbxcandidato'];
$comuna = $_POST['cbxcomuna'];
$region = $_POST['cbxregion'];
$tipob = $_POST['Ccbox'];


$nombreV = trim($_POST['nombre']);
$sql = "SELECT vo_rut FROM votante WHERE vo_rut = '$rut'";
$result = $conexion->query($sql);


if(!empty($nombreV)){ //Validacion si nombre esta vacio
    if(strlen($alias) >= 5 && preg_match("/[a-zA-Z]/", $alias) && preg_match("/\d/", $alias)) {//Validacion si alias tiene mas de 5 caracteres y numeros
        if(validarRUT($rut)==true){
            if (!$result->num_rows > 0) {
              if(filter_var($email, FILTER_VALIDATE_EMAIL)){//validacion de correo
                if (!empty($_POST['cbxcandidato']) && !empty($_POST['cbxregion'])&& !empty($_POST['cbxcomuna'])){
                    if (isset($_POST['Ccbox'])) {
                    $tipo = implode(", ", $tipob);
                    $sql = "INSERT INTO votante (Vo_rut, Vo_nombreApellido, Vo_alias, Vo_email) VALUES ('$rut', '$nombre', '$alias',
                    '$email')";
                    mysqli_query($conexion, $sql);
                    $idVotante = mysqli_insert_id($conexion);
                    $sql = "INSERT INTO voto (votante_Vo_id, candidato_Ca_id, Vo_tipo) VALUES ('$idVotante','$candidato','$tipo')";
                    $resultado = mysqli_query($conexion, $sql);
                    if($resultado){
                    echo "<script>
                    alert('Se ha registrado el usuario');
                    window.location = '/SistemaDeVotación'
                    </script>";
                    }else{
                    echo "<script>
                    alert('No se pudo registrar');
                    window.history.go(-1)
                    </script>";
                    }
                }else{
                    echo "<script>alert('Seleccione una Referencia');
                    window.history.go(-1)</script>";
                }
                }else{
                    echo "<script>alert('Seleccione Ubicacion y candidato');
                    window.history.go(-1)</script>";
                }
                
            }else{
                echo "<script>alert('Correo invalido');
                window.history.go(-1)</script>";
            }
        } else {
            echo "<script>alert('Rut ya ingresado');
                window.history.go(-1)</script>";
        }
        }else{
            echo "<script>alert('Rut Invalido');
            window.history.go(-1)</script>";
        }
    
    }else{
        echo "<script>alert('Alias debe ser mayor a 5 caracteres y tener numeros y letras');
        window.history.go(-1)</script>";
    }
 } else{
    echo "<script>alert('Nombre Vacio');
    window.history.go(-1)</script>";
 }

 //validar rut
 function validarRUT($rut) {
    $rut = preg_replace('/[^k0-9]/i', '', $rut);
    $dv  = substr($rut, -1);
    $numero = substr($rut, 0, strlen($rut) - 1);
    $i = 2;
    $suma = 0;
    foreach(array_reverse(str_split($numero)) as $v)
    {
        if($i==8)
            $i = 2;
        $suma += $v * $i;
        ++$i;
    }
    $dvr = 11 - ($suma % 11);
    if($dvr == 11) $dvr = 0;
    if($dvr == 10) $dvr = 'K';
    if($dvr == strtoupper($dv))
        return true;
    else
        return false;
}


?>

