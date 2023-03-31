<?php
class Region extends conectar
{
    public function get_Region()
    { #llama a Region de la BDD
        $conectar = parent::Conexion();
        parent::set_names();
        $sql = "SELECT * FROM `region`";
        $sql = $conectar->prepare($sql);
        $sql->execute();
        return $resultado = $sql->fetchAll(PDO::FETCH_ASSOC);
    }   


}
?> 