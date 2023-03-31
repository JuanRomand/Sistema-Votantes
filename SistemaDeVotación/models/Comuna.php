<?php
class Comuna extends conectar
{
    public function get_Comuna()
    { #llama a Comuna de la BDD
        $conectar = parent::Conexion();
        parent::set_names();
        $sql = "SELECT * FROM `comuna`";
        $sql = $conectar->prepare($sql);
        $sql->execute();
        return $resultado = $sql->fetchAll(PDO::FETCH_ASSOC);
    }   


}
?> 