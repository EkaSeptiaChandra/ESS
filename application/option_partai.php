<?php
require_once '../config/class.php';
$db = new dbObj();
$connString = $db->getConstring();

$params = $_REQUEST;
$tb_name = "partai";

$optionClass = new Option($connString);
$optionClass->getOption($params, $tb_name);

class Option {
    
    protected $conn;    
            
    function __construct($connString) {
        $this->conn = $connString;
    }
    
    function getOption($params, $tb_name) {
        $json_data = [];
        $sql = "select kode_partai, nama_partai from " .$tb_name;
        $result = mysqli_query($this->conn, $sql);
        
        while ($row = mysqli_fetch_assoc($result)){
            $json_data[] = $row;
        }                
        
        echo json_encode($json_data);
    }
}