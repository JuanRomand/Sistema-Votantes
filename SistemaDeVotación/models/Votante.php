<?php
class Votante extends conectar
{
    public function get_votante()
    { #llama a votante de la BDD
        $conectar = parent::Conexion();
        parent::set_names();
        $sql = "SELECT * FROM `votante`";
        $sql = $conectar->prepare($sql);
        $sql->execute();
        return $resultado = $sql->fetchAll(PDO::FETCH_ASSOC);
    }   
}
?> 