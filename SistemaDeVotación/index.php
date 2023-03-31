<?php

require_once "config/Conexion.php"; #se hace conexion
require_once "models/Candidato.php"; #se llaman las tablas
require_once "models/Votante.php";
require_once "models/Region.php";
require_once "models/Comuna.php";
require_once "models/Voto.php";


$candidato = new Candidato(); #se declara
$votante = new Votante();
$region = new Region();
$comuna = new Comuna();
$voto = new Voto();

$getCandidato = $candidato->get_candidato(); #funciones get
$getVotante = $votante->get_votante();
$getRegion = $region->get_region();
$getComuna = $comuna->get_comuna();
$getVoto = $voto->get_voto();

?>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Proyecto para postulacion de trabajo desarrollador web Desis" />
    <meta name="author" content="Juan Roman Duran" />
    <script src="https://code.jquery.com/jquery-3.6.4.js"
        integrity="sha256-a9jBBRygX1Bh5lt8GZjXDzyOB+bWve9EiO7tROUtj/E=" crossorigin="anonymous"></script>
    <title>Votación</title>
    <link rel="stylesheet" type="text/css" href="css/diseño.css?uuid=<?php echo uniqid();?>">
    <!-- para que el navegador no cachee el css-->
</head>

<body>
    <div>
        <div class=div-externo>
            <h1 class=titulo>FORMULARIO DE VOTACIÓN:</h1>
            <div class=div-interno>
                <form method="post" action="controller/Insertar.php" ?>
                    <div class="datos">
                        <label class="labelt">Nombre y Apellido</label>
                        <input class="inputt" type="text" name="nombre">
                    </div>
                    <div class="datos">
                        <label class="labelt">Alias</label>
                        <input class="inputt" type="text" name="alias">
                    </div>
                    <div class="datos">
                        <label class="labelt">RUT </label>
                        <input class="inputt" type="text" name="rut">
                    </div>
                    <div class="datos">
                        <label class="labelt">Email </label>
                        <input class="inputt" type="text" name="email">
                    </div>
                    <div class="datos">
                        <label class="labelt">Región </label>
                        <select class="selects" id="cbxregion" name="cbxregion">
                            <option value=''></option>
                            <?php
                            foreach($getRegion as $region){
                                echo "<option value='".$region['Re_id']."'>".$region['Re_region']."</option>";}
                            ?>
                        </select>
                    </div>
                    <div class="datos">
                        <label class="labelt">Comuna</label>
                        <!-- Se extrae ID en base del nombre de comuna-->
                        <select class="selects" id="cbxcomuna" name="cbxcomuna">
                            <?php
                            foreach($getComuna as $comuna) {
                            echo "<option value=\"{$comuna['Co_id']}\">{$comuna['Co_Comuna']}</option>";}
                             ?>
                        </select>
                    </div>
                    <div class=datos>
                        <label class=labelt>Candidato</label>
                        <select class="selects" id="cbxcandidato" name="cbxcandidato">
                            <?php
                            foreach($getCandidato as $candidato) {
                            echo "<option value=\"{$candidato['Ca_id']}\">{$candidato['Ca_nombre']}</option>";}
                             ?>
                        </select>
                    </div>
                    <div class=datos>
                        <label>Como se enteró de Nosotros </label>
                        <input class="checkboxT1" type="checkbox" id="Ccbox" name="Ccbox[]" value="Web">
                        <label class="labelCheck" for="Ccbox">Web</label>
                        <input class="checkboxT" type="checkbox" id="Ccbox" name="Ccbox[]" value="Tv">
                        <label class="labelCheck" for="Ccbox">TV</label>
                        <input class="checkboxT" type="checkbox" id="Ccbox" name="Ccbox[]" value="Redes">
                        <label class="labelCheck" for="Ccbox">Redes Sociales</label>
                        <input class="checkboxT" type="checkbox" id="Ccbox" name="Ccbox[]" value="Amigos">
                        <label class="labelCheck" for="Ccbox">Amigo</label>

                    </div>
                    <input class=boton type="submit" name="submit" value="Votar">
                </form>
               
            </div>
        </div>
    </div>
    </div>
</body>

</html>
<!-- Script de combobox -->
<script type="text/javascript">
$(document).ready(function() {
    $('#cbxregion').val();
    recargarLista();

    $('#cbxregion').change(function() {
        recargarLista();
    });
})
</script>
<script type="text/javascript">
function recargarLista() {
    $.ajax({
        type: "POST",
        url: "controller/GRegion.php",
        data: "region=" + $('#cbxregion').val(),
        success: function(r) {
            $('#cbxcomuna').html(r);
        }
    });
}
</script>
<script type="text/javascript">
$(document).ready(function() {
    $('#cbxcomuna').val(0);
    recargarLista2();

    $('#cbxcomuna').change(function() {
        recargarLista2();
    });
})
</script>
<script type="text/javascript">
function recargarLista2() {
    $.ajax({
        type: "POST",
        url: "controller/GCandidato.php",
        data: "Co_id=" + $('#cbxcomuna').val(),
        success: function(r) {
            $('#cbxcandidato').html(r);
        }
    });
}
</script>