<?php
require_once '../config/config.php';
$db = new dbObj();
$connString = $db->getConstring();

$params = $_REQUEST;
$tb_name = "dapil";
$kode_dapil = "001";

$optionClass = new Option($connString);
$optionClass->getOption($params, $kode_dapil);

class Option {
    
    protected $conn;    
            
    function __construct($connString) {
        $this->conn = $connString;
    }
    
    function getOption($params, $kode_dapil) {
        $json_data = [];
        $sql = "call SpDapil('$kode_dapil')";
        $result = mysqli_query($this->conn, $sql);
        
        while ($row = mysqli_fetch_assoc($result)){
            $json_data[] = $row;
        }                
        
        echo json_encode($json_data);
    }
}