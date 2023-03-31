<?php
class Candidato extends Conectar
{
    public function get_candidato()
    { #llama a candidato de la BDD
        $conectar = parent::Conexion();
        parent::set_names();
        $sql = "SELECT * FROM `candidato`";
        $sql = $conectar->prepare($sql);
        $sql->execute();
        return $resultado = $sql->fetchAll(PDO::FETCH_ASSOC);
    }   
   
}

?>