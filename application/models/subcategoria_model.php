<?php

    class Subcategoria_model extends CI_Model {
     
        // -- SELECT --
        function Listar($pData = null,$pOrderBy = null){

            if(isset($pData["Id"])){$this->db->where("Id",$pData["Id"]);}  
            if(isset($pData["IdCategoria"])){$this->db->where("IdCategoria",$pData["IdCategoria"]);}
            if(isset($pData["Descricao"])){$this->db->where("Descricao",$pData["Descricao"]);}
            
            $this->db->from("sub_categoria");
            return $this->db->get()->result_array();

        }
        
        function Buscar($pData){

            if(isset($pData["Id"])){$this->db->where("Id",$pData["Id"]);}  
            if(isset($pData["IdCategoria"])){$this->db->where("IdCategoria",$pData["IdCategoria"]);}
            if(isset($pData["Descricao"])){$this->db->where("Descricao",$pData["Descricao"]);}
            
            $this->db->from("sub_categoria");
            return $this->db->get()->row_array();

        }
        
    }