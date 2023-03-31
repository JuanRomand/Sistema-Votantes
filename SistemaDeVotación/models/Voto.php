<?php
class Voto extends conectar
{
    public function get_voto()
    { #llama a voto de la BDD
        $conectar = parent::Conexion();
        parent::set_names();
        $sql = "SELECT * FROM `voto`";
        $sql = $conectar->prepare($sql);
        $sql->execute();
        return $resultado = $sql->fetchAll(PDO::FETCH_ASSOC);
    }   
}
?> 