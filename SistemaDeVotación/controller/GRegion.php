<?php 
//se realiza conexion 
$conexion=mysqli_connect("localhost", "root", "", "votacionbdd");
//se extrae datos del combobox y se asigna a region
$region=$_POST['region'];
//se busca los datos en la tabla comuna en la base de datos donde coincida con el id de region 
$sql="SELECT Co_id, Co_Comuna from comuna where region_Re_id='$region'";
$result=mysqli_query($conexion,$sql);

$cadena="<label>Seleciona Comuna</label> 
            <select id='cbxcomuna' name='cbxcomuna'>
            <option value=''></option>";
while ($ver=mysqli_fetch_array($result)) {
    $cadena=$cadena."<option value='".$ver['Co_id']."'>".$ver['Co_Comuna']."</option>";
}
$cadena.= "</select>";
echo $cadena;
?>