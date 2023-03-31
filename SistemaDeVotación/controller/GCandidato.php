<?php 
//se realiza conexion 
$conexion=mysqli_connect("localhost", "root", "", "votacionbdd");
//se extrae datos del combobox y se asigna a Co_id
$Co_id=$_POST['Co_id'];
//se busca los datos en la tabla candidato en la base de datos donde coincida con el id de region 
$sqlCo="SELECT Ca_id, Ca_nombre from candidato where comuna_Co_id='$Co_id'";
$resultCo=mysqli_query($conexion,$sqlCo);

$cadenaCo="<label>Selecciona Candidato</label> 
            <select id='cbxcandidato' name='cbxcandidato'>
            <option value=''></option>";
while ($verCo=mysqli_fetch_array($resultCo)) {
    $cadenaCo=$cadenaCo."<option value='".$verCo['Ca_id']."'>".$verCo['Ca_nombre']."</option>";
}
$cadenaCo.= "</select>";
echo $cadenaCo;
?>